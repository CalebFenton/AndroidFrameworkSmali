.class Ljava/lang/CaseMapper$1;
.super Ljava/lang/ThreadLocal;
.source "CaseMapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/CaseMapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Landroid/icu/text/Transliterator;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 140
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist initialValue()Landroid/icu/text/Transliterator;
    .registers 2

    .line 142
    const-string v0, "el-Upper"

    invoke-static {v0}, Landroid/icu/text/Transliterator;->getInstance(Ljava/lang/String;)Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic whitelist test-api initialValue()Ljava/lang/Object;
    .registers 2

    .line 140
    invoke-virtual {p0}, Ljava/lang/CaseMapper$1;->initialValue()Landroid/icu/text/Transliterator;

    move-result-object v0

    return-object v0
.end method
