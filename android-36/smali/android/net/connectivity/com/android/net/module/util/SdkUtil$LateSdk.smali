.class public Landroid/net/connectivity/com/android/net/module/util/SdkUtil$LateSdk;
.super Ljava/lang/Object;
.source "SdkUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/android/net/module/util/SdkUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LateSdk"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final blacklist value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 48
    .local p0, "this":Landroid/net/connectivity/com/android/net/module/util/SdkUtil$LateSdk;, "Landroid/net/connectivity/com/android/net/module/util/SdkUtil$LateSdk<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    iput-object p1, p0, Landroid/net/connectivity/com/android/net/module/util/SdkUtil$LateSdk;->value:Ljava/lang/Object;

    .line 50
    return-void
.end method
