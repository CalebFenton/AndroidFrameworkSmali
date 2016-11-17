.class Lcom/android/server/LockGuard$LockInfo;
.super Ljava/lang/Object;
.source "LockGuard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LockGuard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LockInfo"
.end annotation


# instance fields
.field public children:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public label:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    new-instance v0, Landroid/util/ArraySet;

    #@5
    const/4 v1, 0x0

    #@6
    const/4 v2, 0x1

    #@7
    invoke-direct {v0, v1, v2}, Landroid/util/ArraySet;-><init>(IZ)V

    #@a
    iput-object v0, p0, Lcom/android/server/LockGuard$LockInfo;->children:Landroid/util/ArraySet;

    #@c
    .line 62
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LockGuard$LockInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/server/LockGuard$LockInfo;-><init>()V

    #@3
    return-void
.end method
