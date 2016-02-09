.class public interface abstract Landroid/icu/impl/ICUCache;
.super Ljava/lang/Object;
.source "ICUCache.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final NULL:Ljava/lang/Object;

.field public static final SOFT:I = 0x0

.field public static final WEAK:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 16
    new-instance v0, Ljava/lang/Object;

    #@2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@5
    sput-object v0, Landroid/icu/impl/ICUCache;->NULL:Ljava/lang/Object;

    #@7
    .line 10
    return-void
.end method


# virtual methods
.method public abstract clear()V
.end method

.method public abstract get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method
