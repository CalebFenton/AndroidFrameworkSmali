.class public Landroid/util/KeyValueListParser$LongValue;
.super Ljava/lang/Object;
.source "KeyValueListParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/KeyValueListParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LongValue"
.end annotation


# instance fields
.field private final blacklist mDefaultValue:J

.field private final blacklist mKey:Ljava/lang/String;

.field private blacklist mValue:J


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 6
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # J

    .line 279
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p1, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    .line 281
    iput-wide p2, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    .line 282
    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    iput-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    .line 283
    return-void
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 312
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 313
    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    const-string v0, "="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 316
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 317
    return-void
.end method

.method public blacklist dumpProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;
    .param p2, "tag"    # J

    .line 321
    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 322
    return-void
.end method

.method public blacklist getDefaultValue()J
    .registers 3

    .line 297
    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    return-wide v0
.end method

.method public blacklist getKey()Ljava/lang/String;
    .registers 2

    .line 292
    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getValue()J
    .registers 3

    .line 302
    iget-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    return-wide v0
.end method

.method public blacklist parse(Landroid/util/KeyValueListParser;)V
    .registers 5
    .param p1, "parser"    # Landroid/util/KeyValueListParser;

    .line 287
    iget-object v0, p0, Landroid/util/KeyValueListParser$LongValue;->mKey:Ljava/lang/String;

    iget-wide v1, p0, Landroid/util/KeyValueListParser$LongValue;->mDefaultValue:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    .line 288
    return-void
.end method

.method public blacklist setValue(J)V
    .registers 3
    .param p1, "value"    # J

    .line 307
    iput-wide p1, p0, Landroid/util/KeyValueListParser$LongValue;->mValue:J

    .line 308
    return-void
.end method
