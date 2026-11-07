.class public Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
.super Lcom/android/internal/widget/remotecompose/core/Operation;
.source "CoreSemantics.java"

# interfaces
.implements Lcom/android/internal/widget/remotecompose/core/semantics/AccessibilityModifier;


# instance fields
.field public blacklist mClickable:Z

.field public blacklist mContentDescriptionId:I

.field public blacklist mEnabled:Z

.field public blacklist mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

.field public blacklist mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

.field public blacklist mStateDescriptionId:I

.field public blacklist mTextId:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 3

    .line 32
    invoke-direct {p0}, Lcom/android/internal/widget/remotecompose/core/Operation;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 34
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 35
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 36
    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 37
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 38
    sget-object v1, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    iput-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 39
    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    return-void
.end method

.method private blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 4
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 69
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 70
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->fromInt(I)Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 71
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 72
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 73
    invoke-static {}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->values()[Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readByte()I

    move-result v1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 74
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 75
    invoke-virtual {p1}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    .line 76
    return-void
.end method

.method public static blacklist read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;Ljava/util/List;)V
    .registers 3
    .param p0, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/widget/remotecompose/core/WireBuffer;",
            "Ljava/util/List<",
            "Lcom/android/internal/widget/remotecompose/core/Operation;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "operations":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/remotecompose/core/Operation;>;"
    new-instance v0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;

    invoke-direct {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;-><init>()V

    .line 142
    .local v0, "semantics":Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;
    invoke-direct {v0, p0}, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->read(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V

    .line 144
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    return-void
.end method


# virtual methods
.method public blacklist apply(Lcom/android/internal/widget/remotecompose/core/RemoteContext;)V
    .registers 2
    .param p1, "context"    # Lcom/android/internal/widget/remotecompose/core/RemoteContext;

    .line 81
    return-void
.end method

.method public blacklist deepToString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "indent"    # Ljava/lang/String;

    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getContentDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 149
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getMode()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;
    .registers 2

    .line 54
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    return-object v0
.end method

.method public blacklist getOpCode()I
    .registers 2

    .line 43
    const/16 v0, 0xfa

    return v0
.end method

.method public blacklist getRole()Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;
    .registers 2

    .line 49
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    return-object v0
.end method

.method public blacklist getStateDescriptionId()Ljava/lang/Integer;
    .registers 2

    .line 153
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist getTextId()Ljava/lang/Integer;
    .registers 2

    .line 157
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-eqz v0, :cond_b

    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public blacklist serialize(Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;)V
    .registers 5
    .param p1, "serializer"    # Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 162
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->MODIFIER:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;->A11Y:Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;

    aput-object v2, v0, v1

    .line 163
    invoke-interface {p1, v0}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addTags([Lcom/android/internal/widget/remotecompose/core/serialize/SerializeTags;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    .line 164
    const-string v1, "CoreSemantics"

    invoke-interface {v0, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->addType(Ljava/lang/String;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    .line 165
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "contentDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    .line 166
    const-string/jumbo v2, "role"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    .line 167
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "textId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v2, "stateDescriptionId"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Integer;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    .line 169
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "enabled"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    .line 170
    const-string v2, "mode"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Enum;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    .line 171
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "clickable"

    invoke-interface {v0, v2, v1}, Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;->add(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/android/internal/widget/remotecompose/core/serialize/MapSerializer;

    .line 172
    return-void
.end method

.method public blacklist serializeToString(ILcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;)V
    .registers 5
    .param p1, "indent"    # I
    .param p2, "serializer"    # Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;

    .line 125
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SEMANTICS = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/android/internal/widget/remotecompose/core/operations/utilities/StringSerializer;->append(ILjava/lang/String;)V

    .line 126
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "SEMANTICS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    sget-object v2, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->SET:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    const-string v3, " "

    if-eq v1, v2, :cond_1a

    .line 89
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 92
    :cond_1a
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v1, :cond_26

    .line 93
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    iget-object v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 96
    :cond_26
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    if-lez v1, :cond_34

    .line 97
    const-string v1, " contentDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 100
    :cond_34
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    if-lez v1, :cond_42

    .line 101
    const-string v1, " text="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    :cond_42
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    if-lez v1, :cond_50

    .line 105
    const-string v1, " stateDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    iget v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    :cond_50
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    if-nez v1, :cond_59

    .line 109
    const-string v1, " disabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    :cond_59
    iget-boolean v1, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    if-eqz v1, :cond_62

    .line 112
    const-string v1, " clickable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    :cond_62
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist write(Lcom/android/internal/widget/remotecompose/core/WireBuffer;)V
    .registers 3
    .param p1, "buffer"    # Lcom/android/internal/widget/remotecompose/core/WireBuffer;

    .line 59
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mContentDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 60
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mRole:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Role;->ordinal()I

    move-result v0

    goto :goto_11

    :cond_10
    const/4 v0, -0x1

    :goto_11
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 61
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mTextId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mStateDescriptionId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeInt(I)V

    .line 63
    iget-object v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mMode:Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;

    invoke-virtual {v0}, Lcom/android/internal/widget/remotecompose/core/semantics/AccessibleComponent$Mode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeByte(I)V

    .line 64
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mEnabled:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 65
    iget-boolean v0, p0, Lcom/android/internal/widget/remotecompose/core/semantics/CoreSemantics;->mClickable:Z

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/remotecompose/core/WireBuffer;->writeBoolean(Z)V

    .line 66
    return-void
.end method
