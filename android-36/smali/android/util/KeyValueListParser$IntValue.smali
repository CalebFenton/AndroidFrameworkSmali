.class public Landroid/util/KeyValueListParser$IntValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IntValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:I

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:I


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # I

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    iput-object p1, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    .line 228
    iput p2, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    .line 229
    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    iput v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    .line 230
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 259
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 261
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 263
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 264
    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 268
    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 269
    return-void
.end method

.method public blacklist getDefaultValue()I
    .registers 2

    .line 244
    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    return v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 239
    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()I
    .registers 2

    .line 249
    iget v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    return v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 234
    iget-object v0, p0, Landroid/util/KeyValueListParser$IntValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$IntValue;->mDefaultValue:I

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    .line 235
    return-void
.end method

.method public blacklist setValue(I)V
    .registers 2
    .param p1, "value"    # I

    .line 254
    iput p1, p0, Landroid/util/KeyValueListParser$IntValue;->mValue:I

    .line 255
    return-void
.end method
