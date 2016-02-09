.class Lcom/android/server/wifi/WifiConfigStore$1;
.super Ljava/lang/Object;
.source "WifiConfigStore.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiConfigStore;->buildPnoList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/net/wifi/WifiConfiguration;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiConfigStore;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiConfigStore;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiConfigStore;

    #@0
    .prologue
    .line 1311
    iput-object p1, p0, Lcom/android/server/wifi/WifiConfigStore$1;->this$0:Lcom/android/server/wifi/WifiConfigStore;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I
    .locals 2
    .param p1, "a"    # Landroid/net/wifi/WifiConfiguration;
    .param p2, "b"    # Landroid/net/wifi/WifiConfiguration;

    #@0
    .prologue
    .line 1313
    iget v0, p1, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@2
    iget v1, p2, Landroid/net/wifi/WifiConfiguration;->priority:I

    #@4
    if-lt v0, v1, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, -0x1

    #@9
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "a"    # Ljava/lang/Object;
    .param p2, "b"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 1312
    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    #@2
    .end local p1    # "a":Ljava/lang/Object;
    check-cast p2, Landroid/net/wifi/WifiConfiguration;

    #@4
    .end local p2    # "b":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wifi/WifiConfigStore$1;->compare(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiConfiguration;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
