.class public Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScopeData"
.end annotation


# instance fields
.field blacklist prefix:Ljava/lang/String;

.field blacklist requiresDigitPrefix:Z

.field blacklist suffix:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .registers 3
    .param p0, "in"    # Landroid/icu/impl/duration/impl/RecordReader;

    .line 195
    const-string v0, "ScopeData"

    invoke-interface {p0, v0}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 196
    new-instance v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    invoke-direct {v0}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;-><init>()V

    .line 197
    .local v0, "scope":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    const-string v1, "prefix"

    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    .line 198
    const-string v1, "requiresDigitPrefix"

    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    .line 199
    const-string v1, "suffix"

    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    .line 200
    invoke-interface {p0}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 201
    return-object v0

    .line 204
    .end local v0    # "scope":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    :cond_2c
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .registers 4
    .param p1, "out"    # Landroid/icu/impl/duration/impl/RecordWriter;

    .line 187
    const-string v0, "ScopeData"

    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    .line 188
    const-string v0, "prefix"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v0, "requiresDigitPrefix"

    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    .line 190
    const-string v0, "suffix"

    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    .line 192
    return-void
.end method
