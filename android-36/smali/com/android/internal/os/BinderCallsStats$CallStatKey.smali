.class public Lcom/android/internal/os/BinderCallsStats$CallStatKey;
.super Ljava/lang/Object;
.source "BinderCallsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/BinderCallsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallStatKey"
.end annotation


# instance fields
.field public blacklist binderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "+",
            "Landroid/os/Binder;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist callingUid:I

.field private blacklist screenInteractive:Z

.field public blacklist transactionCode:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fputscreenInteractive(Lcom/android/internal/os/BinderCallsStats$CallStatKey;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    return-void
.end method

.method public constructor blacklist <init>()V
    .registers 1

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 992
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 993
    return v0

    .line 996
    :cond_4
    move-object v1, p1

    check-cast v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;

    .line 997
    .local v1, "key":Lcom/android/internal/os/BinderCallsStats$CallStatKey;
    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    if-ne v2, v3, :cond_24

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    iget v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    if-ne v2, v3, :cond_24

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    iget-boolean v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-ne v2, v3, :cond_24

    iget-object v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    iget-object v3, v1, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    .line 1000
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 997
    :goto_25
    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 4

    .line 1005
    iget-object v0, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->binderClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1006
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->transactionCode:I

    add-int/2addr v1, v2

    .line 1007
    .end local v0    # "result":I
    .local v1, "result":I
    mul-int/lit8 v0, v1, 0x1f

    iget v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->callingUid:I

    add-int/2addr v0, v2

    .line 1008
    .end local v1    # "result":I
    .restart local v0    # "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v2, p0, Lcom/android/internal/os/BinderCallsStats$CallStatKey;->screenInteractive:Z

    if-eqz v2, :cond_19

    const/16 v2, 0x4cf

    goto :goto_1b

    :cond_19
    const/16 v2, 0x4d5

    :goto_1b
    add-int/2addr v1, v2

    .line 1009
    .end local v0    # "result":I
    .restart local v1    # "result":I
    return v1
.end method
