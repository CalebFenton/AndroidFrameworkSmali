.class Llibcore/icu/TimeZoneNames$1;
.super Ljava/lang/Object;
.source "TimeZoneNames.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibcore/icu/TimeZoneNames;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 114
    check-cast p1, [Ljava/lang/String;

    check-cast p2, [Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Llibcore/icu/TimeZoneNames$1;->compare([Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public blacklist compare([Ljava/lang/String;[Ljava/lang/String;)I
    .registers 5
    .param p1, "lhs"    # [Ljava/lang/String;
    .param p2, "rhs"    # [Ljava/lang/String;

    .line 116
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v0, p2, v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method
