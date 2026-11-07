.class public final synthetic Landroid/net/NetworkCapabilities$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Landroid/net/connectivity/com/android/net/module/util/BitUtils$NameOf;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final blacklist nameOf(I)Ljava/lang/String;
    .registers 2

    .line 0
    invoke-static {p1}, Landroid/net/NetworkCapabilities;->capabilityNameOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
