.class final Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
.super Ljava/lang/Object;
.source "MmTelFeatureConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/ims/MmTelFeatureConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BinderAccessState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final blacklist STATE_AVAILABLE:I = 0x2

.field static final blacklist STATE_NOT_SET:I = 0x0

.field static final blacklist STATE_NOT_SUPPORTED:I = 0x1


# instance fields
.field private final blacklist mInterface:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final blacklist mState:I


# direct methods
.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "state"    # I

    .line 267
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;, "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 268
    iput p1, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mState:I

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mInterface:Ljava/lang/Object;

    .line 270
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 272
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;, "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<TT;>;"
    .local p1, "binderInterface":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mState:I

    .line 274
    iput-object p1, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mInterface:Ljava/lang/Object;

    .line 275
    return-void
.end method

.method public static blacklist of(Ljava/lang/Object;)Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<",
            "TT;>;"
        }
    .end annotation

    .line 261
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;

    invoke-direct {v0, p0}, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public blacklist getInterface()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 282
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;, "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<TT;>;"
    iget-object v0, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mInterface:Ljava/lang/Object;

    return-object v0
.end method

.method public blacklist getState()I
    .registers 2

    .line 278
    .local p0, "this":Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;, "Lcom/android/ims/MmTelFeatureConnection$BinderAccessState<TT;>;"
    iget v0, p0, Lcom/android/ims/MmTelFeatureConnection$BinderAccessState;->mState:I

    return v0
.end method
