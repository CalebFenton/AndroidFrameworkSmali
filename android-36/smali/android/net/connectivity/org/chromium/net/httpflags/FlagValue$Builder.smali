.class public final Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "FlagValue.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 1562
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1563
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist addAllConstrainedValues(Ljava/lang/Iterable;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;)",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;"
        }
    .end annotation

    .line 1707
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;>;"
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1708
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$maddAllConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/Iterable;)V

    .line 1709
    return-object p0
.end method

.method public blacklist addConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    .line 1691
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1692
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 1693
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1692
    invoke-static {v0, p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1694
    return-object p0
.end method

.method public blacklist addConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1661
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1662
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1663
    return-object p0
.end method

.method public blacklist addConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 4
    .param p1, "builderForValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    .line 1676
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1677
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1678
    return-object p0
.end method

.method public blacklist addConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1646
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1647
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$maddConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1648
    return-object p0
.end method

.method public blacklist clearConstrainedValues()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 2

    .line 1721
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1722
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$mclearConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;)V

    .line 1723
    return-object p0
.end method

.method public blacklist getConstrainedValues(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    .registers 3
    .param p1, "index"    # I

    .line 1603
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->getConstrainedValues(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConstrainedValuesCount()I
    .registers 2

    .line 1591
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->getConstrainedValuesCount()I

    move-result v0

    return v0
.end method

.method public blacklist getConstrainedValuesList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
            ">;"
        }
    .end annotation

    .line 1577
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 1578
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->getConstrainedValuesList()Ljava/util/List;

    move-result-object v0

    .line 1577
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist removeConstrainedValues(I)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 3
    .param p1, "index"    # I

    .line 1735
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1736
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$mremoveConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;I)V

    .line 1737
    return-object p0
.end method

.method public blacklist setConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 5
    .param p1, "index"    # I
    .param p2, "builderForValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;

    .line 1631
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1632
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    .line 1633
    invoke-virtual {p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->build()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1632
    invoke-static {v0, p1, v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$msetConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1634
    return-object p0
.end method

.method public blacklist setConstrainedValues(ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;
    .registers 4
    .param p1, "index"    # I
    .param p2, "value"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 1616
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->copyOnWrite()V

    .line 1617
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->-$$Nest$msetConstrainedValues(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;ILandroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1618
    return-object p0
.end method
