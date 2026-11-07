.class public Landroid/util/KeyValueListParser$StringValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StringValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:Ljava/lang/String;

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 332
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 333
    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    .line 334
    iput-object p2, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    .line 335
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 336
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 4
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 365
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 366
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 367
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 368
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 370
    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 374
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    invoke-virtual {p1, p2, p3, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 375
    return-void
.end method

.method public blacklist getDefaultValue()Ljava/lang/String;
    .registers 2

    .line 350
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 345
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()Ljava/lang/String;
    .registers 2

    .line 355
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .registers 4
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 340
    iget-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mKey:Ljava/lang/String;

    iget-object v1, p0, Landroid/util/KeyValueListParser$StringValue;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 341
    return-void
.end method

.method public blacklist setValue(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 360
    iput-object p1, p0, Landroid/util/KeyValueListParser$StringValue;->mValue:Ljava/lang/String;

    .line 361
    return-void
.end method
