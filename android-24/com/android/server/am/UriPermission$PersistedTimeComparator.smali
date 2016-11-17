.class public Lcom/android/server/am/UriPermission$PersistedTimeComparator;
.super Ljava/lang/Object;
.source "UriPermission.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/UriPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersistedTimeComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/server/am/UriPermission;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public compare(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission;)I
    .locals 4
    .param p1, "lhs"    # Lcom/android/server/am/UriPermission;
    .param p2, "rhs"    # Lcom/android/server/am/UriPermission;

    #@0
    .prologue
    .line 345
    iget-wide v0, p1, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@2
    iget-wide v2, p2, Lcom/android/server/am/UriPermission;->persistedCreateTime:J

    #@4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Long;->compare(JJ)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 344
    check-cast p1, Lcom/android/server/am/UriPermission;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, Lcom/android/server/am/UriPermission;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/UriPermission$PersistedTimeComparator;->compare(Lcom/android/server/am/UriPermission;Lcom/android/server/am/UriPermission;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
