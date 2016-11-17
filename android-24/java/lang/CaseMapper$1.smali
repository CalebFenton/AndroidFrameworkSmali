.class final Ljava/lang/CaseMapper$1;
.super Ljava/lang/ThreadLocal;
.source "CaseMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/CaseMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal",
        "<",
        "Landroid/icu/text/Transliterator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method protected initialValue()Landroid/icu/text/Transliterator;
    .locals 1

    #@0
    .prologue
    .line 141
    const-string/jumbo v0, "el-Upper"

    #@3
    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    #@6
    move-result-object v0

    #@7
    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/CaseMapper$1;->initialValue()Landroid/icu/text/Transliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
