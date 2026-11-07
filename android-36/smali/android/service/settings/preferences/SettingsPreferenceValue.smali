.class public final Landroid/service/settings/preferences/SettingsPreferenceValue;
.super Ljava/lang/Object;
.source "SettingsPreferenceValue.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;,
        Landroid/service/settings/preferences/SettingsPreferenceValue$Type;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/settings/preferences/SettingsPreferenceValue;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist MAX_TYPE_VALUE:I = 0x4

.field public static final whitelist TYPE_BOOLEAN:I = 0x0

.field public static final whitelist TYPE_DOUBLE:I = 0x2

.field public static final whitelist TYPE_INT:I = 0x4

.field public static final whitelist TYPE_LONG:I = 0x1

.field public static final whitelist TYPE_STRING:I = 0x3


# instance fields
.field private final blacklist mType:I

.field private final blacklist mValue:Ljava/lang/Object;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/service/settings/preferences/SettingsPreferenceValue$1;

    invoke-direct {v0}, Landroid/service/settings/preferences/SettingsPreferenceValue$1;-><init>()V

    sput-object v0, Landroid/service/settings/preferences/SettingsPreferenceValue;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 5
    .param p1, "in"    # Landroid/os/Parcel;

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    .line 122
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    if-nez v0, :cond_18

    .line 123
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    goto :goto_53

    .line 124
    :cond_18
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_28

    .line 125
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    goto :goto_53

    .line 126
    :cond_28
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_38

    .line 127
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    goto :goto_53

    .line 128
    :cond_38
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_44

    .line 129
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    goto :goto_53

    .line 130
    :cond_44
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_54

    .line 131
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    .line 136
    :goto_53
    return-void

    .line 134
    :cond_54
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/service/settings/preferences/SettingsPreferenceValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceValue;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;

    .line 115
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->-$$Nest$fgetmType(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)I

    move-result v0

    iput v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    .line 117
    invoke-static {p1}, Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;->-$$Nest$fgetmValue(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    .line 118
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;Landroid/service/settings/preferences/SettingsPreferenceValue-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/settings/preferences/SettingsPreferenceValue;-><init>(Landroid/service/settings/preferences/SettingsPreferenceValue$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getBooleanValue()Z
    .registers 2

    .line 59
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public whitelist getDoubleValue()D
    .registers 3

    .line 80
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getIntValue()I
    .registers 2

    .line 66
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public whitelist getLongValue()J
    .registers 3

    .line 73
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getStringValue()Ljava/lang/String;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getType()I
    .registers 2

    .line 52
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 141
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    if-nez v0, :cond_11

    .line 143
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getBooleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    goto :goto_44

    .line 144
    :cond_11
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1e

    .line 145
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getLongValue()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_44

    .line 146
    :cond_1e
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2b

    .line 147
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getDoubleValue()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    goto :goto_44

    .line 148
    :cond_2b
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_38

    .line 149
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_44

    .line 150
    :cond_38
    iget v0, p0, Landroid/service/settings/preferences/SettingsPreferenceValue;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_44

    .line 151
    invoke-virtual {p0}, Landroid/service/settings/preferences/SettingsPreferenceValue;->getIntValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    :cond_44
    :goto_44
    return-void
.end method
