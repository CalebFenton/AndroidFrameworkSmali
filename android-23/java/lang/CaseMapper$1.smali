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
        "Llibcore/icu/Transliterator;",
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
.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    #@0
    .prologue
    .line 140
    invoke-virtual {p0}, Ljava/lang/CaseMapper$1;->initialValue()Llibcore/icu/Transliterator;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method protected initialValue()Llibcore/icu/Transliterator;
    .locals 2

    #@0
    .prologue
    .line 141
    new-instance v0, Llibcore/icu/Transliterator;

    #@2
    const-string/jumbo v1, "el-Upper"

    #@5
    invoke-direct {v0, v1}, Llibcore/icu/Transliterator;-><init>(Ljava/lang/String;)V

    #@8
    return-object v0
.end method
