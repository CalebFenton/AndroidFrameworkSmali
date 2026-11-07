.class Landroid/telephony/VisualVoicemailSmsFilterSettings$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/telephony/VisualVoicemailSmsFilterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 193
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 196
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;-><init>()V

    .line 197
    .local v0, "builder":Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .line 198
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .line 199
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .line 200
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setPackageName(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->build()Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic whitelist createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1

    return-object p1
.end method

.method public blacklist newArray(I)[Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .registers 3
    .param p1, "size"    # I

    .line 206
    new-array v0, p1, [Landroid/telephony/VisualVoicemailSmsFilterSettings;

    return-object v0
.end method

.method public bridge synthetic whitelist newArray(I)[Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 193
    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;->newArray(I)[Landroid/telephony/VisualVoicemailSmsFilterSettings;

    move-result-object p1

    return-object p1
.end method
