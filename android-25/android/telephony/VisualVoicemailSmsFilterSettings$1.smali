.class final Landroid/telephony/VisualVoicemailSmsFilterSettings$1;
.super Ljava/lang/Object;
.source "VisualVoicemailSmsFilterSettings.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/telephony/VisualVoicemailSmsFilterSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Landroid/telephony/VisualVoicemailSmsFilterSettings;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 148
    new-instance v0, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    #@2
    invoke-direct {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;-><init>()V

    #@5
    .line 149
    .local v0, "builder":Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setClientPrefix(Ljava/lang/String;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    #@c
    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setOriginatingNumbers(Ljava/util/List;)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    #@13
    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@16
    move-result v1

    #@17
    invoke-virtual {v0, v1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->setDestinationPort(I)Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;

    #@1a
    .line 153
    invoke-virtual {v0}, Landroid/telephony/VisualVoicemailSmsFilterSettings$Builder;->build()Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@1d
    move-result-object v1

    #@1e
    return-object v1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 147
    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;->createFromParcel(Landroid/os/Parcel;)Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public newArray(I)[Landroid/telephony/VisualVoicemailSmsFilterSettings;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 158
    new-array v0, p1, [Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@2
    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    #@0
    .prologue
    .line 157
    invoke-virtual {p0, p1}, Landroid/telephony/VisualVoicemailSmsFilterSettings$1;->newArray(I)[Landroid/telephony/VisualVoicemailSmsFilterSettings;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method
