.class Landroid/net/wifi/WifiMigration$1;
.super Landroid/util/SparseArray;
.source "WifiMigration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiMigration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 4

    .line 146
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 147
    const/4 v0, 0x0

    const-string v1, "WifiConfigStore.xml"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMigration$1;->put(ILjava/lang/Object;)V

    .line 148
    const/4 v0, 0x1

    const-string v2, "WifiConfigStoreSoftAp.xml"

    invoke-virtual {p0, v0, v2}, Landroid/net/wifi/WifiMigration$1;->put(ILjava/lang/Object;)V

    .line 149
    const/4 v0, 0x2

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMigration$1;->put(ILjava/lang/Object;)V

    .line 150
    const/4 v0, 0x3

    const-string v1, "WifiConfigStoreNetworkSuggestions.xml"

    invoke-virtual {p0, v0, v1}, Landroid/net/wifi/WifiMigration$1;->put(ILjava/lang/Object;)V

    .line 151
    return-void
.end method
