.class public final Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
.super Ljava/lang/Object;
.source "ResolvedFlags.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Value"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    }
.end annotation


# instance fields
.field private final blacklist mValue:Ljava/lang/Object;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresolve(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/String;[I)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 3

    invoke-static {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->resolve(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/String;[I)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object p0

    return-object p0
.end method

.method public constructor blacklist <init>(F)V
    .registers 3
    .param p1, "value"    # F

    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 104
    return-void
.end method

.method public constructor blacklist <init>(J)V
    .registers 4
    .param p1, "value"    # J

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 99
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "value"    # Ljava/lang/String;

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 108
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 109
    return-void
.end method

.method public constructor blacklist <init>(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 94
    return-void
.end method

.method private blacklist checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V
    .registers 6
    .param p1, "requestedType"    # Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    .line 134
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->getType()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    move-result-object v0

    .line 135
    .local v0, "actualType":Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    if-ne p1, v0, :cond_7

    .line 142
    return-void

    .line 136
    :cond_7
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to access flag value as "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", but actual type is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist fromConstrainedValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 5
    .param p0, "constrainedValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 71
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getValueCase()Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;

    move-result-object v0

    .line 72
    .local v0, "valueCase":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$1;->$SwitchMap$org$chromium$net$httpflags$FlagValue$ConstrainedValue$ValueCase:[I

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue$ValueCase;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_5c

    .line 86
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Flag value uses unknown value type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 84
    :pswitch_28
    const/4 v1, 0x0

    return-object v1

    .line 82
    :pswitch_2a
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-object v1

    .line 80
    :pswitch_34
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Ljava/lang/String;)V

    return-object v1

    .line 78
    :pswitch_3e
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getFloatValue()F

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;-><init>(F)V

    return-object v1

    .line 76
    :pswitch_48
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getIntValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;-><init>(J)V

    return-object v1

    .line 74
    :pswitch_52
    new-instance v1, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getBoolValue()Z

    move-result v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;-><init>(Z)V

    return-object v1

    :pswitch_data_5c
    .packed-switch 0x1
        :pswitch_52
        :pswitch_48
        :pswitch_3e
        :pswitch_34
        :pswitch_2a
        :pswitch_28
    .end packed-switch
.end method

.method private static blacklist matchesVersion([I[I)Z
    .registers 7
    .param p0, "cronetVersion"    # [I
    .param p1, "minVersion"    # [I

    .line 58
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p0

    array-length v2, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_22

    .line 59
    array-length v1, p0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_11

    aget v1, p0, v0

    goto :goto_12

    :cond_11
    move v1, v3

    .line 60
    .local v1, "cronetComponent":I
    :goto_12
    array-length v4, p1

    if-ge v0, v4, :cond_18

    aget v4, p1, v0

    goto :goto_19

    :cond_18
    move v4, v3

    .line 61
    .local v4, "minComponent":I
    :goto_19
    if-le v1, v4, :cond_1c

    .line 62
    return v2

    .line 63
    :cond_1c
    if-ge v1, v4, :cond_1f

    .line 64
    return v3

    .line 58
    .end local v1    # "cronetComponent":I
    .end local v4    # "minComponent":I
    :cond_1f
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "i":I
    :cond_22
    return v2
.end method

.method private static blacklist resolve(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;Ljava/lang/String;[I)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;
    .registers 6
    .param p0, "flagValue"    # Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;
    .param p1, "appId"    # Ljava/lang/String;
    .param p2, "cronetVersion"    # [I

    .line 44
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue;->getConstrainedValuesList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;

    .line 45
    .local v1, "constrainedValue":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasAppId()Z

    move-result v2

    if-eqz v2, :cond_24

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getAppId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 46
    :cond_24
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->hasMinVersion()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 49
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;->getMinVersion()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags;->-$$Nest$smparseVersionString(Ljava/lang/String;)[I

    move-result-object v2

    .line 47
    invoke-static {p2, v2}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->matchesVersion([I[I)Z

    move-result v2

    if-nez v2, :cond_39

    .line 50
    goto :goto_8

    .line 52
    :cond_39
    invoke-static {v1}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->fromConstrainedValue(Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;)Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;

    move-result-object v0

    return-object v0

    .line 54
    .end local v1    # "constrainedValue":Landroid/net/connectivity/org/chromium/net/httpflags/FlagValue$ConstrainedValue;
    :cond_3e
    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public blacklist getBoolValue()Z
    .registers 2

    .line 146
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 147
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public blacklist getBytesValue()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 170
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 171
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    return-object v0
.end method

.method public blacklist getFloatValue()F
    .registers 2

    .line 158
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 159
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method public blacklist getIntValue()J
    .registers 3

    .line 152
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 153
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getStringValue()Ljava/lang/String;
    .registers 2

    .line 164
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->checkType(Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;)V

    .line 165
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;
    .registers 4

    .line 117
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Boolean;

    if-eqz v0, :cond_9

    .line 118
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BOOL:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 119
    :cond_9
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Long;

    if-eqz v0, :cond_12

    .line 120
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->INT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 121
    :cond_12
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/Float;

    if-eqz v0, :cond_1b

    .line 122
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->FLOAT:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 123
    :cond_1b
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 124
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->STRING:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 125
    :cond_24
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    instance-of v0, v0, Landroid/net/connectivity/com/google/protobuf/ByteString;

    if-eqz v0, :cond_2d

    .line 126
    sget-object v0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;->BYTES:Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value$Type;

    return-object v0

    .line 128
    :cond_2d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected flag value type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/httpflags/ResolvedFlags$Value;->mValue:Ljava/lang/Object;

    .line 129
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
