.class public Lcom/android/internal/os/PowerStats$DescriptorRegistry;
.super Ljava/lang/Object;
.source "PowerStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/PowerStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DescriptorRegistry"
.end annotation


# instance fields
.field private final blacklist mDescriptors:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/internal/os/PowerStats$Descriptor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 417
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->mDescriptors:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public blacklist get(I)Lcom/android/internal/os/PowerStats$Descriptor;
    .registers 3
    .param p1, "powerComponentId"    # I

    .line 433
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->mDescriptors:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/PowerStats$Descriptor;

    return-object v0
.end method

.method public blacklist register(Lcom/android/internal/os/PowerStats$Descriptor;)V
    .registers 4
    .param p1, "descriptor"    # Lcom/android/internal/os/PowerStats$Descriptor;

    .line 425
    iget-object v0, p0, Lcom/android/internal/os/PowerStats$DescriptorRegistry;->mDescriptors:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/internal/os/PowerStats$Descriptor;->powerComponentId:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 426
    return-void
.end method
