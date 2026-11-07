.class public Landroid/util/KeyValueListParser$FloatValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:F

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:F


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;F)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # F

    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 386
    iput-object p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    .line 387
    iput p2, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    .line 388
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    iput v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 389
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 418
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 421
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(F)V

    .line 422
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 423
    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 427
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JF)V

    .line 428
    return-void
.end method

.method public blacklist getDefaultValue()F
    .registers 2

    .line 403
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    return v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 398
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()F
    .registers 2

    .line 408
    iget v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    return v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 393
    iget-object v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mKey:Ljava/lang/String;

    iget v1, p0, Landroid/util/KeyValueListParser$FloatValue;->mDefaultValue:F

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getFloat(Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 394
    return-void
.end method

.method public blacklist setValue(F)V
    .registers 2
    .param p1, "value"    # F

    .line 413
    iput p1, p0, Landroid/util/KeyValueListParser$FloatValue;->mValue:F

    .line 414
    return-void
.end method
