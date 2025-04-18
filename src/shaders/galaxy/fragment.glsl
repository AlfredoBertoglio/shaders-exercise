varying vec3 vColor;

void main()
{
    // Disc

    // float strenght = distance(gl_PointCoord, vec2(0.5));
    // strenght = step(0.5, strenght);
    // strenght = 1.0 - strenght;

    // // Difuse point
    // float strenght = distance(gl_PointCoord, vec2(0.5));
    // strenght *= 2.0;
    // strenght = 1.0 - strenght;

    // Light point
    float strenght = distance(gl_PointCoord, vec2(0.5));
    strenght = 1.0 - strenght;
    strenght = pow(strenght, 10.0);

    // Final color

    vec3 color = mix(vec3(0.0), vColor, strenght);
    gl_FragColor = vec4(vec3(color), 1.0);
}