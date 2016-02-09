.class final Lcom/android/server/AppOpsService$UidState;
.super Ljava/lang/Object;
.source "AppOpsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AppOpsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UidState"
.end annotation


# instance fields
.field public opModes:Landroid/util/SparseIntArray;

.field public pkgOps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/AppOpsService$Ops;",
            ">;"
        }
    .end annotation
.end field

.field public final uid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "uid"    # I

    #@0
    .prologue
    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 116
    iput p1, p0, Lcom/android/server/AppOpsService$UidState;->uid:I

    #@5
    .line 115
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 120
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@3
    .line 121
    iput-object v0, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@5
    .line 119
    return-void
.end method

.method public isDefault()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x1

    #@1
    const/4 v0, 0x0

    #@2
    .line 125
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@4
    if-eqz v2, :cond_0

    #@6
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->pkgOps:Landroid/util/ArrayMap;

    #@8
    invoke-virtual {v2}, Landroid/util/ArrayMap;->isEmpty()Z

    #@b
    move-result v2

    #@c
    if-eqz v2, :cond_2

    #@e
    .line 126
    :cond_0
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@10
    if-eqz v2, :cond_1

    #@12
    iget-object v2, p0, Lcom/android/server/AppOpsService$UidState;->opModes:Landroid/util/SparseIntArray;

    #@14
    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    #@17
    move-result v2

    #@18
    if-gtz v2, :cond_2

    #@1a
    :cond_1
    move v0, v1

    #@1b
    .line 125
    :cond_2
    return v0
.end method
