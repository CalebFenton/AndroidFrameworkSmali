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
.field prefix:Ljava/lang/String;

.field requiresDigitPrefix:Z

.field suffix:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static read(Landroid/icu/impl/duration/impl/RecordReader;)Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    .locals 2
    .param p0, "in"    # Landroid/icu/impl/duration/impl/RecordReader;

    #@0
    .prologue
    .line 188
    const-string/jumbo v1, "ScopeData"

    #@3
    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->open(Ljava/lang/String;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_0

    #@9
    .line 189
    new-instance v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;

    #@b
    invoke-direct {v0}, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;-><init>()V

    #@e
    .line 190
    .local v0, "scope":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    const-string/jumbo v1, "prefix"

    #@11
    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@14
    move-result-object v1

    #@15
    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    #@17
    .line 191
    const-string/jumbo v1, "requiresDigitPrefix"

    #@1a
    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->bool(Ljava/lang/String;)Z

    #@1d
    move-result v1

    #@1e
    iput-boolean v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    #@20
    .line 192
    const-string/jumbo v1, "suffix"

    #@23
    invoke-interface {p0, v1}, Landroid/icu/impl/duration/impl/RecordReader;->string(Ljava/lang/String;)Ljava/lang/String;

    #@26
    move-result-object v1

    #@27
    iput-object v1, v0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    #@29
    .line 193
    invoke-interface {p0}, Landroid/icu/impl/duration/impl/RecordReader;->close()Z

    #@2c
    move-result v1

    #@2d
    if-eqz v1, :cond_0

    #@2f
    .line 194
    return-object v0

    #@30
    .line 197
    .end local v0    # "scope":Landroid/icu/impl/duration/impl/DataRecord$ScopeData;
    :cond_0
    const/4 v1, 0x0

    #@31
    return-object v1
.end method


# virtual methods
.method public write(Landroid/icu/impl/duration/impl/RecordWriter;)V
    .locals 2
    .param p1, "out"    # Landroid/icu/impl/duration/impl/RecordWriter;

    #@0
    .prologue
    .line 180
    const-string/jumbo v0, "ScopeData"

    #@3
    invoke-interface {p1, v0}, Landroid/icu/impl/duration/impl/RecordWriter;->open(Ljava/lang/String;)Z

    #@6
    .line 181
    const-string/jumbo v0, "prefix"

    #@9
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->prefix:Ljava/lang/String;

    #@b
    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@e
    .line 182
    const-string/jumbo v0, "requiresDigitPrefix"

    #@11
    iget-boolean v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->requiresDigitPrefix:Z

    #@13
    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->bool(Ljava/lang/String;Z)V

    #@16
    .line 183
    const-string/jumbo v0, "suffix"

    #@19
    iget-object v1, p0, Landroid/icu/impl/duration/impl/DataRecord$ScopeData;->suffix:Ljava/lang/String;

    #@1b
    invoke-interface {p1, v0, v1}, Landroid/icu/impl/duration/impl/RecordWriter;->string(Ljava/lang/String;Ljava/lang/String;)V

    #@1e
    .line 184
    invoke-interface {p1}, Landroid/icu/impl/duration/impl/RecordWriter;->close()Z

    #@21
    .line 179
    return-void
.end method
