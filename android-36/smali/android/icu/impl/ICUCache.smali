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
.field public static final blacklist NULL:Ljava/lang/Object;

.field public static final blacklist SOFT:I = 0x0

.field public static final blacklist WEAK:I = 0x1


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/icu/impl/ICUCache;->NULL:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public abstract blacklist clear()V
.end method

.method public abstract blacklist get(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation
.end method

.method public abstract blacklist put(Ljava/lang/Object;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation
.end method
