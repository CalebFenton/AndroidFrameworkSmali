.class Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;
.super Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;
.source "Operations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/remotecompose/core/Operations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UniqueIntMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 307
    const-class v0, Lcom/android/internal/widget/remotecompose/core/Operations;

    return-void
.end method

.method constructor blacklist <init>()V
    .registers 1

    .line 307
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;, "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<TT;>;"
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist put(ILjava/lang/Object;)Ljava/lang/Object;
    .registers 4
    .param p1, "key"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)TT;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap;, "Lcom/android/internal/widget/remotecompose/core/Operations$UniqueIntMap<TT;>;"
    .local p2, "value":Ljava/lang/Object;, "TT;"
    nop

    .line 311
    invoke-super {p0, p1, p2}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/IntMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
