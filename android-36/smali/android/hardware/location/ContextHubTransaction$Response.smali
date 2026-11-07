.class public Landroid/hardware/location/ContextHubTransaction$Response;
.super Ljava/lang/Object;
.source "ContextHubTransaction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/location/ContextHubTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Response"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private greylist-max-o mContents:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TR;"
        }
    .end annotation
.end field

.field private greylist-max-o mResult:I


# direct methods
.method public constructor greylist-max-o <init>(ILjava/lang/Object;)V
    .registers 3
    .param p1, "result"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITR;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    .local p2, "contents":Ljava/lang/Object;, "TR;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 163
    iput p1, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    .line 164
    iput-object p2, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    .line 165
    return-void
.end method


# virtual methods
.method public whitelist getContents()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .line 173
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    iget-object v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mContents:Ljava/lang/Object;

    return-object v0
.end method

.method public whitelist getResult()I
    .registers 2

    .line 169
    .local p0, "this":Landroid/hardware/location/ContextHubTransaction$Response;, "Landroid/hardware/location/ContextHubTransaction$Response<TR;>;"
    iget v0, p0, Landroid/hardware/location/ContextHubTransaction$Response;->mResult:I

    return v0
.end method
