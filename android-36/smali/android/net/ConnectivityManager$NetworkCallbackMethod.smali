.class public Landroid/net/ConnectivityManager$NetworkCallbackMethod;
.super Ljava/lang/Object;
.source "ConnectivityManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/ConnectivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkCallbackMethod"
.end annotation


# instance fields
.field public final blacklist mCallbacksCallingThisMethod:I

.field public final blacklist mName:Ljava/lang/String;

.field public final blacklist mParameterTypes:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/Class;I)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p3, "callbacksCallingThisMethod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 4565
    .local p2, "parameterTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4566
    iput-object p1, p0, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mName:Ljava/lang/String;

    .line 4567
    iput-object p2, p0, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mParameterTypes:[Ljava/lang/Class;

    .line 4568
    iput p3, p0, Landroid/net/ConnectivityManager$NetworkCallbackMethod;->mCallbacksCallingThisMethod:I

    .line 4569
    return-void
.end method
