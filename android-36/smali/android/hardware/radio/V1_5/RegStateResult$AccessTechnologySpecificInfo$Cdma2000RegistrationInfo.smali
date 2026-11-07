.class public final Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
.super Ljava/lang/Object;
.source "RegStateResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cdma2000RegistrationInfo"
.end annotation


# instance fields
.field public blacklist cssSupported:Z

.field public blacklist defaultRoamingIndicator:I

.field public blacklist roamingIndicator:I

.field public blacklist systemIsInPrl:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 17
    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 22
    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 28
    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    return-void
.end method

.method public static final blacklist readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;
    .registers 13
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;",
            ">;"
        }
    .end annotation

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 89
    .local v0, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;>;"
    const-wide/16 v1, 0x10

    invoke-virtual {p0, v1, v2}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v1

    .line 92
    .local v1, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v2, 0x8

    invoke-virtual {v1, v2, v3}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v2

    .line 93
    .local v2, "_hidl_vec_size":I
    mul-int/lit8 v3, v2, 0x10

    int-to-long v5, v3

    .line 94
    invoke-virtual {v1}, Landroid/os/HwBlob;->handle()J

    move-result-wide v7

    .line 93
    const-wide/16 v9, 0x0

    const/4 v11, 0x1

    move-object v4, p0

    .end local p0    # "parcel":Landroid/os/HwParcel;
    .local v4, "parcel":Landroid/os/HwParcel;
    invoke-virtual/range {v4 .. v11}, Landroid/os/HwParcel;->readEmbeddedBuffer(JJJZ)Landroid/os/HwBlob;

    move-result-object p0

    .line 97
    .local p0, "childBlob":Landroid/os/HwBlob;
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 98
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_24
    if-ge v3, v2, :cond_37

    .line 99
    new-instance v5, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    invoke-direct {v5}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;-><init>()V

    .line 100
    .local v5, "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    mul-int/lit8 v6, v3, 0x10

    int-to-long v6, v6

    invoke-virtual {v5, v4, p0, v6, v7}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 101
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 98
    .end local v5    # "_hidl_vec_element":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    add-int/lit8 v3, v3, 0x1

    goto :goto_24

    .line 105
    .end local v2    # "_hidl_vec_size":I
    .end local v3    # "_hidl_index_0":I
    .end local p0    # "childBlob":Landroid/os/HwBlob;
    :cond_37
    return-object v0
.end method

.method public static final blacklist writeVectorToParcel(Landroid/os/HwParcel;Ljava/util/ArrayList;)V
    .registers 9
    .param p0, "parcel"    # Landroid/os/HwParcel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/HwParcel;",
            "Ljava/util/ArrayList<",
            "Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;",
            ">;)V"
        }
    .end annotation

    .line 124
    .local p1, "_hidl_vec":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;>;"
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 126
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 127
    .local v1, "_hidl_vec_size":I
    const-wide/16 v2, 0x8

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 128
    const-wide/16 v2, 0xc

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 129
    new-instance v2, Landroid/os/HwBlob;

    mul-int/lit8 v3, v1, 0x10

    invoke-direct {v2, v3}, Landroid/os/HwBlob;-><init>(I)V

    .line 130
    .local v2, "childBlob":Landroid/os/HwBlob;
    const/4 v3, 0x0

    .local v3, "_hidl_index_0":I
    :goto_1e
    if-ge v3, v1, :cond_2f

    .line 131
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    mul-int/lit8 v5, v3, 0x10

    int-to-long v5, v5

    invoke-virtual {v4, v2, v5, v6}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 130
    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    .line 133
    .end local v3    # "_hidl_index_0":I
    :cond_2f
    const-wide/16 v3, 0x0

    invoke-virtual {v0, v3, v4, v2}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    .line 136
    .end local v1    # "_hidl_vec_size":I
    .end local v2    # "childBlob":Landroid/os/HwBlob;
    invoke-virtual {p0, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 137
    return-void
.end method


# virtual methods
.method public final whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 7
    .param p1, "otherObject"    # Ljava/lang/Object;

    .line 32
    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    .line 33
    return v0

    .line 35
    :cond_4
    const/4 v1, 0x0

    if-nez p1, :cond_8

    .line 36
    return v1

    .line 38
    :cond_8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v3, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    if-eq v2, v3, :cond_11

    .line 39
    return v1

    .line 41
    :cond_11
    move-object v2, p1

    check-cast v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;

    .line 42
    .local v2, "other":Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;
    iget-boolean v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    iget-boolean v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    if-eq v3, v4, :cond_1b

    .line 43
    return v1

    .line 45
    :cond_1b
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    if-eq v3, v4, :cond_22

    .line 46
    return v1

    .line 48
    :cond_22
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    if-eq v3, v4, :cond_29

    .line 49
    return v1

    .line 51
    :cond_29
    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    iget v4, v2, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    if-eq v3, v4, :cond_30

    .line 52
    return v1

    .line 54
    :cond_30
    return v0
.end method

.method public final whitelist test-api hashCode()I
    .registers 5

    .line 59
    iget-boolean v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 60
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 61
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 62
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    .line 63
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v3}, Landroid/os/HidlSupport;->deepHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v0

    .line 59
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final blacklist readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "parcel"    # Landroid/os/HwParcel;
    .param p2, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p3, "_hidl_offset"    # J

    .line 110
    const-wide/16 v0, 0x0

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getBool(J)Z

    move-result v0

    iput-boolean v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    .line 111
    const-wide/16 v0, 0x4

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    .line 112
    const-wide/16 v0, 0x8

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    .line 113
    const-wide/16 v0, 0xc

    add-long/2addr v0, p3

    invoke-virtual {p2, v0, v1}, Landroid/os/HwBlob;->getInt32(J)I

    move-result v0

    iput v0, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    .line 114
    return-void
.end method

.method public final blacklist readFromParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 83
    const-wide/16 v0, 0x10

    invoke-virtual {p1, v0, v1}, Landroid/os/HwParcel;->readBuffer(J)Landroid/os/HwBlob;

    move-result-object v0

    .line 84
    .local v0, "blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->readEmbeddedFromParcel(Landroid/os/HwParcel;Landroid/os/HwBlob;J)V

    .line 85
    return-void
.end method

.method public final whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .local v0, "builder":Ljava/lang/StringBuilder;
    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    const-string v1, ".cssSupported = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    iget-boolean v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", .roamingIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", .systemIsInPrl = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    invoke-static {v1}, Landroid/hardware/radio/V1_5/PrlIndicator;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    const-string v1, ", .defaultRoamingIndicator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget v1, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 78
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public final blacklist writeEmbeddedToBlob(Landroid/os/HwBlob;J)V
    .registers 7
    .param p1, "_hidl_blob"    # Landroid/os/HwBlob;
    .param p2, "_hidl_offset"    # J

    .line 141
    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    iget-boolean v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->cssSupported:Z

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putBool(JZ)V

    .line 142
    const-wide/16 v0, 0x4

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->roamingIndicator:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 143
    const-wide/16 v0, 0x8

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->systemIsInPrl:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 144
    const-wide/16 v0, 0xc

    add-long/2addr v0, p2

    iget v2, p0, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->defaultRoamingIndicator:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/HwBlob;->putInt32(JI)V

    .line 145
    return-void
.end method

.method public final blacklist writeToParcel(Landroid/os/HwParcel;)V
    .registers 5
    .param p1, "parcel"    # Landroid/os/HwParcel;

    .line 117
    new-instance v0, Landroid/os/HwBlob;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/os/HwBlob;-><init>(I)V

    .line 118
    .local v0, "_hidl_blob":Landroid/os/HwBlob;
    const-wide/16 v1, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/radio/V1_5/RegStateResult$AccessTechnologySpecificInfo$Cdma2000RegistrationInfo;->writeEmbeddedToBlob(Landroid/os/HwBlob;J)V

    .line 119
    invoke-virtual {p1, v0}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    .line 120
    return-void
.end method
