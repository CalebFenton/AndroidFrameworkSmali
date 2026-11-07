.class public interface abstract Landroid/net/wifi/WifiManager$PnoScanResultsCallback;
.super Ljava/lang/Object;
.source "WifiManager.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PnoScanResultsCallback"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiManager$PnoScanResultsCallback$RemovalReason;,
        Landroid/net/wifi/WifiManager$PnoScanResultsCallback$RegisterFailureReason;
    }
.end annotation


# static fields
.field public static final whitelist REGISTER_PNO_CALLBACK_ALREADY_REGISTERED:I = 0x1

.field public static final whitelist REGISTER_PNO_CALLBACK_PNO_NOT_SUPPORTED:I = 0x3

.field public static final whitelist REGISTER_PNO_CALLBACK_RESOURCE_BUSY:I = 0x2

.field public static final whitelist REGISTER_PNO_CALLBACK_UNKNOWN:I = 0x0

.field public static final whitelist REMOVE_PNO_CALLBACK_RESULTS_DELIVERED:I = 0x1

.field public static final whitelist REMOVE_PNO_CALLBACK_UNKNOWN:I = 0x0

.field public static final whitelist REMOVE_PNO_CALLBACK_UNREGISTERED:I = 0x2


# virtual methods
.method public abstract whitelist onRegisterFailed(I)V
.end method

.method public abstract whitelist onRegisterSuccess()V
.end method

.method public abstract whitelist onRemoved(I)V
.end method

.method public abstract whitelist onScanResultsAvailable(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation
.end method
