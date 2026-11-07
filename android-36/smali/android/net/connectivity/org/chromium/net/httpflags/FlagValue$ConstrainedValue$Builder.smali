.class public final Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "FlagValue.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValueOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 781
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 782
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearAppId()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 868
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 869
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearAppId(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 870
    return-object p0
.end method

.method public blacklist clearBoolValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 1056
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1057
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearBoolValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1058
    return-object p0
.end method

.method public blacklist clearBytesValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 1221
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1222
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearBytesValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1223
    return-object p0
.end method

.method public blacklist clearFloatValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 1128
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1129
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearFloatValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1130
    return-object p0
.end method

.method public blacklist clearIntValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 1092
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1093
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearIntValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1094
    return-object p0
.end method

.method public blacklist clearMinVersion()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 996
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 997
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearMinVersion(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 998
    return-object p0
.end method

.method public blacklist clearStringValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 1174
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearStringValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 1176
    return-object p0
.end method

.method public blacklist clearValue()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 2

    .line 791
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 792
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$mclearValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)V

    .line 793
    return-object p0
.end method

.method public blacklist getAppId()Ljava/lang/String;
    .registers 2

    .line 823
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getAppIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 838
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getBoolValue()Z
    .registers 2

    .line 1039
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBoolValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 1204
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getFloatValue()F
    .registers 2

    .line 1111
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getFloatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getIntValue()J
    .registers 3

    .line 1075
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getIntValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getMinVersion()Ljava/lang/String;
    .registers 2

    .line 930
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getMinVersionBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 952
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersionBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStringValue()Ljava/lang/String;
    .registers 2

    .line 1147
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStringValueBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 1156
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getStringValueBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getValueCase()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    .registers 2

    .line 787
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getValueCase()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasAppId()Z
    .registers 2

    .line 809
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasAppId()Z

    move-result v0

    return v0
.end method

.method public blacklist hasBoolValue()Z
    .registers 2

    .line 1031
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasBoolValue()Z

    move-result v0

    return v0
.end method

.method public blacklist hasBytesValue()Z
    .registers 2

    .line 1196
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasBytesValue()Z

    move-result v0

    return v0
.end method

.method public blacklist hasFloatValue()Z
    .registers 2

    .line 1103
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasFloatValue()Z

    move-result v0

    return v0
.end method

.method public blacklist hasIntValue()Z
    .registers 2

    .line 1067
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasIntValue()Z

    move-result v0

    return v0
.end method

.method public blacklist hasMinVersion()Z
    .registers 2

    .line 909
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasMinVersion()Z

    move-result v0

    return v0
.end method

.method public blacklist hasStringValue()Z
    .registers 2

    .line 1139
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasStringValue()Z

    move-result v0

    return v0
.end method

.method public blacklist setAppId(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 853
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetAppId(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V

    .line 855
    return-object p0
.end method

.method public blacklist setAppIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 885
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 886
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetAppIdBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 887
    return-object p0
.end method

.method public blacklist setBoolValue(Z)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 1047
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1048
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetBoolValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Z)V

    .line 1049
    return-object p0
.end method

.method public blacklist setBytesValue(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1212
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1213
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetBytesValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 1214
    return-object p0
.end method

.method public blacklist setFloatValue(F)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # F

    .line 1119
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1120
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetFloatValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;F)V

    .line 1121
    return-object p0
.end method

.method public blacklist setIntValue(J)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 1083
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1084
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetIntValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;J)V

    .line 1085
    return-object p0
.end method

.method public blacklist setMinVersion(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 974
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 975
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetMinVersion(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V

    .line 976
    return-object p0
.end method

.method public blacklist setMinVersionBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1020
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1021
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetMinVersionBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 1022
    return-object p0
.end method

.method public blacklist setStringValue(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1165
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1166
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetStringValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Ljava/lang/String;)V

    .line 1167
    return-object p0
.end method

.method public blacklist setStringValueBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1185
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->copyOnWrite()V

    .line 1186
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->-$$Nest$msetStringValueBytes(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 1187
    return-object p0
.end method
