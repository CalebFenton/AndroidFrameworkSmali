.class final Llibcore/icu/TimeZoneNames$1;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "lhs"    # Ljava/lang/Object;
    .param p2, "rhs"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 103
    check-cast p1, [Ljava/lang/String;

    #@2
    .end local p1    # "lhs":Ljava/lang/Object;
    check-cast p2, [Ljava/lang/String;

    #@4
    .end local p2    # "rhs":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Llibcore/icu/TimeZoneNames$1;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public compare([Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p1, "lhs"    # [Ljava/lang/String;
    .param p2, "rhs"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 104
    aget-object v0, p1, v1

    #@3
    aget-object v1, p2, v1

    #@5
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@8
    move-result v0

    #@9
    return v0
.end method
