.class public final Landroid/adservices/common/AdSelectionSignals;
.super Ljava/lang/Object;
.source "AdSelectionSignals.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/adservices/common/AdSelectionSignals;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EMPTY:Landroid/adservices/common/AdSelectionSignals;


# instance fields
.field private final blacklist mSignals:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 38
    const-string v0, "{}"

    invoke-static {v0}, Landroid/adservices/common/AdSelectionSignals;->fromString(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;

    move-result-object v0

    sput-object v0, Landroid/adservices/common/AdSelectionSignals;->EMPTY:Landroid/adservices/common/AdSelectionSignals;

    .line 59
    new-instance v0, Landroid/adservices/common/AdSelectionSignals$1;

    invoke-direct {v0}, Landroid/adservices/common/AdSelectionSignals$1;-><init>()V

    sput-object v0, Landroid/adservices/common/AdSelectionSignals;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/adservices/common/AdSelectionSignals;-><init>(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/adservices/common/AdSelectionSignals-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/adservices/common/AdSelectionSignals;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "adSelectionSignals"    # Ljava/lang/String;

    .line 47
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/adservices/common/AdSelectionSignals;-><init>(Ljava/lang/String;Z)V

    .line 48
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "adSelectionSignals"    # Ljava/lang/String;
    .param p2, "validate"    # Z

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    if-eqz p2, :cond_b

    .line 53
    invoke-direct {p0, p1}, Landroid/adservices/common/AdSelectionSignals;->validate(Ljava/lang/String;)V

    .line 55
    :cond_b
    iput-object p1, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public static whitelist fromString(Ljava/lang/String;)Landroid/adservices/common/AdSelectionSignals;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/adservices/common/AdSelectionSignals;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroid/adservices/common/AdSelectionSignals;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method public static blacklist fromString(Ljava/lang/String;Z)Landroid/adservices/common/AdSelectionSignals;
    .registers 3
    .param p0, "source"    # Ljava/lang/String;
    .param p1, "validate"    # Z

    .line 142
    new-instance v0, Landroid/adservices/common/AdSelectionSignals;

    invoke-direct {v0, p0, p1}, Landroid/adservices/common/AdSelectionSignals;-><init>(Ljava/lang/String;Z)V

    return-object v0
.end method

.method private blacklist validate(Ljava/lang/String;)V
    .registers 2
    .param p1, "inputString"    # Ljava/lang/String;

    .line 181
    return-void
.end method


# virtual methods
.method public blacklist containsAdCost()Z
    .registers 4

    .line 159
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 160
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "adCost"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_12

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 161
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_12
    move-exception v1

    .line 162
    .local v1, "e":Lorg/json/JSONException;
    return v0
.end method

.method public blacklist containsDataVersion()Z
    .registers 4

    .line 172
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 173
    .local v1, "json":Lorg/json/JSONObject;
    const-string v2, "dataVersion"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_e} :catch_12

    if-eqz v2, :cond_11

    const/4 v0, 0x1

    :cond_11
    return v0

    .line 174
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_12
    move-exception v1

    .line 175
    .local v1, "e":Lorg/json/JSONException;
    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 75
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 96
    instance-of v0, p1, Landroid/adservices/common/AdSelectionSignals;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    move-object v1, p1

    check-cast v1, Landroid/adservices/common/AdSelectionSignals;

    .line 97
    invoke-virtual {v1}, Landroid/adservices/common/AdSelectionSignals;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    const/4 v0, 0x0

    .line 96
    :goto_16
    return v0
.end method

.method public blacklist getSizeInBytes()I
    .registers 3

    .line 150
    iget-object v0, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 110
    iget-object v0, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 117
    iget-object v0, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 80
    iget-object v0, p0, Landroid/adservices/common/AdSelectionSignals;->mSignals:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 81
    return-void
.end method
