.class public Landroid/net/connectivity/android/net/util/DnsUtils$Rfc6724Comparator;
.super Ljava/lang/Object;
.source "DnsUtils.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/android/net/util/DnsUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Rfc6724Comparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist compare(Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;)I
    .registers 5
    .param p1, "span1"    # Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;
    .param p2, "span2"    # Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;

    .line 66
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    if-eq v0, v1, :cond_c

    .line 67
    iget v0, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    iget v1, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->hasSrcAddr:I

    sub-int/2addr v0, v1

    return v0

    .line 71
    :cond_c
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    if-eq v0, v1, :cond_18

    .line 72
    iget v0, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    iget v1, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scopeMatch:I

    sub-int/2addr v0, v1

    return v0

    .line 79
    :cond_18
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->labelMatch:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->labelMatch:I

    if-eq v0, v1, :cond_24

    .line 80
    iget v0, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->labelMatch:I

    iget v1, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->labelMatch:I

    sub-int/2addr v0, v1

    return v0

    .line 84
    :cond_24
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->precedence:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->precedence:I

    if-eq v0, v1, :cond_30

    .line 85
    iget v0, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->precedence:I

    iget v1, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->precedence:I

    sub-int/2addr v0, v1

    return v0

    .line 91
    :cond_30
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    if-eq v0, v1, :cond_3c

    .line 92
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->scope:I

    sub-int/2addr v0, v1

    return v0

    .line 96
    :cond_3c
    iget v0, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    iget v1, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    if-eq v0, v1, :cond_48

    .line 97
    iget v0, p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    iget v1, p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;->prefixMatchLen:I

    sub-int/2addr v0, v1

    return v0

    .line 101
    :cond_48
    const/4 v0, 0x0

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

    .line 61
    check-cast p1, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;

    check-cast p2, Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;

    invoke-virtual {p0, p1, p2}, Landroid/net/connectivity/android/net/util/DnsUtils$Rfc6724Comparator;->compare(Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;Landroid/net/connectivity/android/net/util/DnsUtils$SortableAddress;)I

    move-result p1

    return p1
.end method
