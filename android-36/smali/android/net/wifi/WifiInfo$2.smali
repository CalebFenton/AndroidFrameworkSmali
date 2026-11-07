.class Landroid/net/wifi/WifiInfo$2;
.super Ljava/lang/Object;
.source "WifiInfo.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiInfo;->getSortedMloLinkList(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/wifi/MloLink;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>(Landroid/net/wifi/WifiInfo;)V
    .registers 2
    .param p1, "this$0"    # Landroid/net/wifi/WifiInfo;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 1841
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/net/wifi/MloLink;Landroid/net/wifi/MloLink;)I
    .registers 5
    .param p1, "lhs"    # Landroid/net/wifi/MloLink;
    .param p2, "rhs"    # Landroid/net/wifi/MloLink;

    .line 1844
    invoke-virtual {p1}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v0

    invoke-virtual {p2}, Landroid/net/wifi/MloLink;->getLinkId()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic whitelist test-api compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 1841
    check-cast p1, Landroid/net/wifi/MloLink;

    check-cast p2, Landroid/net/wifi/MloLink;

    invoke-virtual {p0, p1, p2}, Landroid/net/wifi/WifiInfo$2;->compare(Landroid/net/wifi/MloLink;Landroid/net/wifi/MloLink;)I

    move-result p1

    return p1
.end method
