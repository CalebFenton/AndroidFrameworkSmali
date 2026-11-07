.class public Lorg/apache/xml/serializer/utils/SerializerMessages_sv;
.super Ljava/util/ListResourceBundle;
.source "SerializerMessages_sv.java"


# direct methods
.method public constructor greylist <init>()V
    .registers 1

    .line 26
    invoke-direct {p0}, Ljava/util/ListResourceBundle;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api getContents()[[Ljava/lang/Object;
    .registers 20

    .line 28
    const-string v0, "ER_INVALID_PORT"

    const-string v1, "Ogiltigt portnummer"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v2

    const-string v0, "ER_PORT_WHEN_HOST_NULL"

    const-string v1, "Port kan inte s\u00e4ttas n\u00e4r v\u00e4rd \u00e4r null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v3

    const-string v0, "ER_HOST_ADDRESS_NOT_WELLFORMED"

    const-string v1, "V\u00e4rd \u00e4r inte en v\u00e4lformulerad adress"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v4

    const-string v0, "ER_SCHEME_NOT_CONFORMANT"

    const-string v1, "Schemat \u00e4r inte likformigt."

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v5

    const-string v0, "ER_SCHEME_FROM_NULL_STRING"

    const-string v1, "Kan inte s\u00e4tta schema fr\u00e5n null-str\u00e4ng"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v6

    const-string v0, "ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE"

    const-string v1, "V\u00e4g inneh\u00e5ller ogiltig flyktsekvens"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v7

    const-string v0, "ER_PATH_INVALID_CHAR"

    const-string v1, "V\u00e4g inneh\u00e5ller ogiltigt tecken: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v8

    const-string v0, "ER_FRAG_INVALID_CHAR"

    const-string v1, "Fragment inneh\u00e5ller ogiltigt tecken"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v9

    const-string v0, "ER_FRAG_WHEN_PATH_NULL"

    const-string v1, "Fragment kan inte s\u00e4ttas n\u00e4r v\u00e4g \u00e4r null"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v10

    const-string v0, "ER_FRAG_FOR_GENERIC_URI"

    const-string v1, "Fragment kan bara s\u00e4ttas f\u00f6r en allm\u00e4n URI"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v11

    const-string v0, "ER_NO_SCHEME_IN_URI"

    const-string v1, "Schema saknas i URI: {0}"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v12

    const-string v0, "ER_CANNOT_INIT_URI_EMPTY_PARMS"

    const-string v1, "Kan inte initialisera URI med tomma parametrar"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v13

    const-string v0, "ER_NO_FRAGMENT_STRING_IN_PATH"

    const-string v1, "Fragment kan inte anges i b\u00e5de v\u00e4gen och fragmentet"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v14

    const-string v0, "ER_NO_QUERY_STRING_IN_PATH"

    const-string v1, "F\u00f6rfr\u00e5gan-str\u00e4ng kan inte anges i v\u00e4g och f\u00f6rfr\u00e5gan-str\u00e4ng"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v15

    const-string v0, "ER_NO_PORT_IF_NO_HOST"

    const-string v1, "Port f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v16

    const-string v0, "ER_NO_USERINFO_IF_NO_HOST"

    const-string v1, "Userinfo f\u00e5r inte anges om v\u00e4rden inte \u00e4r angiven"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v17

    const-string v0, "ER_SCHEME_REQUIRED"

    const-string v1, "Schema kr\u00e4vs!"

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v18

    filled-new-array/range {v2 .. v18}, [[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
