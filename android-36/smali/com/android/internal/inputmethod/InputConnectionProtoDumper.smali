.class public final Lcom/android/internal/inputmethod/InputConnectionProtoDumper;
.super Ljava/lang/Object;
.source "InputConnectionProtoDumper.java"


# static fields
.field static final blacklist TAG:Ljava/lang/String; = "InputConnectionProtoDumper"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist buildGetCursorCapsModeProto(II)[B
    .registers 7
    .param p0, "reqModes"    # I
    .param p1, "result"    # I

    .line 167
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 168
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000005L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 169
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 170
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 171
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 172
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetExtractedTextProto(Landroid/view/inputmethod/ExtractedTextRequest;ILandroid/view/inputmethod/ExtractedText;)[B
    .registers 13
    .param p0, "request"    # Landroid/view/inputmethod/ExtractedTextRequest;
    .param p1, "flags"    # I
    .param p2, "result"    # Landroid/view/inputmethod/ExtractedText;

    .line 194
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 195
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000006L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 196
    .local v1, "token":J
    const-wide v3, 0x10b00000001L

    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 197
    .local v3, "token_request":J
    const-wide v5, 0x10500000001L

    iget v7, p0, Landroid/view/inputmethod/ExtractedTextRequest;->token:I

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 198
    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->flags:I

    const-wide v6, 0x10500000002L

    invoke-virtual {v0, v6, v7, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 199
    const-wide v8, 0x10500000003L

    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxLines:I

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 200
    const-wide v8, 0x10500000004L

    iget v5, p0, Landroid/view/inputmethod/ExtractedTextRequest;->hintMaxChars:I

    invoke-virtual {v0, v8, v9, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 201
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 202
    invoke-virtual {v0, v6, v7, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 203
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 204
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v5

    return-object v5
.end method

.method public static blacklist buildGetSelectedTextProto(ILjava/lang/CharSequence;)[B
    .registers 7
    .param p0, "flags"    # I
    .param p1, "result"    # Ljava/lang/CharSequence;

    .line 111
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 112
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000003L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 113
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 114
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 115
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetSurroundingTextProto(IIILandroid/view/inputmethod/SurroundingText;)[B
    .registers 14
    .param p0, "beforeLength"    # I
    .param p1, "afterLength"    # I
    .param p2, "flags"    # I
    .param p3, "result"    # Landroid/view/inputmethod/SurroundingText;

    .line 137
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 138
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000004L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 139
    .local v3, "token":J
    const-wide v5, 0x10500000001L

    invoke-virtual {v0, v5, v6, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 140
    const-wide v5, 0x10500000002L

    invoke-virtual {v0, v5, v6, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 141
    const-wide v7, 0x10500000003L

    invoke-virtual {v0, v7, v8, p2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 142
    if-eqz p3, :cond_4b

    .line 143
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 144
    .local v1, "token_result":J
    nop

    .line 145
    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionStart()I

    move-result v9

    .line 144
    invoke-virtual {v0, v5, v6, v9}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 146
    nop

    .line 147
    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getSelectionEnd()I

    move-result v5

    .line 146
    invoke-virtual {v0, v7, v8, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 148
    const-wide v5, 0x10500000004L

    invoke-virtual {p3}, Landroid/view/inputmethod/SurroundingText;->getOffset()I

    move-result v7

    invoke-virtual {v0, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 149
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 151
    .end local v1    # "token_result":J
    :cond_4b
    invoke-virtual {v0, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 152
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method public static blacklist buildGetTextAfterCursorProto(IILjava/lang/CharSequence;)[B
    .registers 8
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 65
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 66
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000002L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 67
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 68
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 69
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 70
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method

.method public static blacklist buildGetTextBeforeCursorProto(IILjava/lang/CharSequence;)[B
    .registers 8
    .param p0, "length"    # I
    .param p1, "flags"    # I
    .param p2, "result"    # Ljava/lang/CharSequence;

    .line 88
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 89
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 90
    .local v1, "token":J
    const-wide v3, 0x10500000001L

    invoke-virtual {v0, v3, v4, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 91
    const-wide v3, 0x10500000002L

    invoke-virtual {v0, v3, v4, p1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 93
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    move-result-object v3

    return-object v3
.end method
