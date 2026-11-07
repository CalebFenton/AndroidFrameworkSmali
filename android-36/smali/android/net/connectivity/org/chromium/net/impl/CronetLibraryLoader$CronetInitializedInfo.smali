.class public final Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;
.super Ljava/lang/Object;
.source "CronetLibraryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CronetInitializedInfo"
.end annotation


# instance fields
.field public blacklist httpFlagsLatencyMillis:I

.field public blacklist httpFlagsNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public blacklist httpFlagsSuccessful:Ljava/lang/Boolean;

.field public blacklist httpFlagsValues:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetLibraryLoader$CronetInitializedInfo;->httpFlagsLatencyMillis:I

    return-void
.end method
