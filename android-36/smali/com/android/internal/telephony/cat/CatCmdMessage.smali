.class public Lcom/android/internal/telephony/cat/CatCmdMessage;
.super Ljava/lang/Object;
.source "CatCmdMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserTerminationCauses;,
        Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListConstants;
    }
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/telephony/cat/CatCmdMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

.field private greylist-max-r mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

.field greylist-max-r mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

.field private greylist-max-r mInput:Lcom/android/internal/telephony/cat/Input;

.field private blacklist mLoadIconFailed:Z

.field private greylist-max-r mMenu:Lcom/android/internal/telephony/cat/Menu;

.field private blacklist mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

.field private blacklist mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

.field private greylist-max-r mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

.field private blacklist mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 233
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/CatCmdMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 6

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    .line 163
    const-class v1, Lcom/android/internal/telephony/cat/CommandDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 164
    const-class v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 165
    const-class v1, Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Menu;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    .line 166
    const-class v1, Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/Input;

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    .line 167
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_51

    goto :goto_52

    :cond_51
    move v2, v0

    :goto_52
    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    .line 168
    sget-object v1, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x3

    if-eq v1, v2, :cond_e6

    const/16 v2, 0x10

    if-eq v1, v2, :cond_c0

    const/16 v2, 0x15

    if-eq v1, v2, :cond_9f

    const/16 v0, 0xd

    if-eq v1, v0, :cond_83

    const/16 v0, 0xe

    if-eq v1, v0, :cond_74

    goto :goto_bf

    .line 175
    :cond_74
    const-class v0, Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-void

    .line 170
    :cond_83
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 172
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-static {}, Lcom/android/internal/telephony/cat/LaunchBrowserMode;->values()[Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    aget-object p1, v0, p1

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    return-void

    .line 183
    :cond_9f
    new-instance v1, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 185
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    new-array v3, v1, [I

    iput-object v3, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    :goto_b0
    if-ge v0, v1, :cond_bf

    .line 187
    iget-object v2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object v2, v2, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b0

    :cond_bf
    :goto_bf
    return-void

    .line 178
    :cond_c0
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 179
    const-class v1, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 180
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    const-class v0, Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 191
    :cond_e6
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    .line 192
    const-class v1, Lcom/android/internal/telephony/cat/SendSMSParams;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v2, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->smsText:Lcom/android/internal/telephony/cat/TextMessage;

    .line 193
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->destAddr:Lcom/android/internal/telephony/cat/TextMessage;

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/telephony/cat/CommandParams;)V
    .registers 4

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 40
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 41
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 43
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    .line 44
    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    .line 93
    iget-object v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    .line 94
    iget-boolean v0, p1, Lcom/android/internal/telephony/cat/CommandParams;->mLoadIconFailed:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    .line 95
    sget-object v0, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_b0

    return-void

    .line 153
    :pswitch_29
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    .line 154
    check-cast p1, Lcom/android/internal/telephony/cat/SetEventListParams;

    iget-object p0, p1, Lcom/android/internal/telephony/cat/SetEventListParams;->mEventInfo:[I

    iput-object p0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    return-void

    .line 149
    :pswitch_37
    check-cast p1, Lcom/android/internal/telephony/cat/BIPClientParams;

    .line 150
    iget-object p1, p1, Lcom/android/internal/telephony/cat/BIPClientParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 141
    :pswitch_3e
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    .line 142
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object p0, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 143
    iget-object p0, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mCallMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 138
    :pswitch_50
    check-cast p1, Lcom/android/internal/telephony/cat/CallSetupParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/CallSetupParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 133
    :pswitch_57
    check-cast p1, Lcom/android/internal/telephony/cat/PlayToneParams;

    .line 134
    iget-object v0, p1, Lcom/android/internal/telephony/cat/PlayToneParams;->mSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    .line 135
    iget-object p1, p1, Lcom/android/internal/telephony/cat/PlayToneParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 127
    :pswitch_62
    check-cast p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;

    iget-object v0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mConfirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    .line 128
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    .line 129
    iget-object p0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mUrl:Ljava/lang/String;

    iput-object p0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    .line 130
    iget-object p0, p1, Lcom/android/internal/telephony/cat/LaunchBrowserParams;->mMode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    iput-object p0, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    return-void

    .line 124
    :pswitch_78
    check-cast p1, Lcom/android/internal/telephony/cat/GetInputParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/GetInputParams;->mInput:Lcom/android/internal/telephony/cat/Input;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-void

    .line 120
    :pswitch_7f
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 104
    :pswitch_86
    instance-of v0, p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    if-eqz v0, :cond_a2

    .line 105
    new-instance v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;-><init>(Lcom/android/internal/telephony/cat/CatCmdMessage;)V

    iput-object v0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    .line 106
    check-cast p1, Lcom/android/internal/telephony/cat/SendSMSParams;

    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mTextSmsMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->smsText:Lcom/android/internal/telephony/cat/TextMessage;

    .line 107
    iget-object v1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDestAddress:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object v1, v0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->destAddr:Lcom/android/internal/telephony/cat/TextMessage;

    .line 108
    iget-object p1, p1, Lcom/android/internal/telephony/cat/SendSMSParams;->mDisplayText:Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 110
    :cond_a2
    check-cast p1, Lcom/android/internal/telephony/cat/DisplayTextParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/DisplayTextParams;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-void

    .line 98
    :pswitch_a9
    check-cast p1, Lcom/android/internal/telephony/cat/SelectItemParams;

    iget-object p1, p1, Lcom/android/internal/telephony/cat/SelectItemParams;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    iput-object p1, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-void

    :pswitch_data_b0
    .packed-switch 0x1
        :pswitch_a9
        :pswitch_a9
        :pswitch_86
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_7f
        :pswitch_78
        :pswitch_78
        :pswitch_62
        :pswitch_57
        :pswitch_50
        :pswitch_3e
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_37
        :pswitch_29
    .end packed-switch
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist geInput()Lcom/android/internal/telephony/cat/Input;
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    return-object p0
.end method

.method public greylist-max-r geTextMessage()Lcom/android/internal/telephony/cat/TextMessage;
    .registers 1

    .line 266
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    return-object p0
.end method

.method public blacklist getBrowserSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;
    .registers 1

    .line 270
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    return-object p0
.end method

.method public greylist-max-r getCallSettings()Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;
    .registers 1

    .line 279
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    return-object p0
.end method

.method public greylist-max-r getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;
    .registers 1

    .line 253
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    iget p0, p0, Lcom/android/internal/telephony/cat/CommandDetails;->typeOfCommand:I

    invoke-static {p0}, Lcom/android/internal/telephony/cat/AppInterface$CommandType;->fromInt(I)Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getMenu()Lcom/android/internal/telephony/cat/Menu;
    .registers 1

    .line 257
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    return-object p0
.end method

.method public greylist getSetEventList()Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;
    .registers 1

    .line 284
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    return-object p0
.end method

.method public blacklist getToneSettings()Lcom/android/internal/telephony/cat/ToneSettings;
    .registers 1

    .line 274
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    return-object p0
.end method

.method public greylist hasIconLoadFailed()Z
    .registers 1

    .line 293
    iget-boolean p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    return p0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 5

    .line 202
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCmdDet:Lcom/android/internal/telephony/cat/CommandDetails;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 203
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mTextMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 204
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mMenu:Lcom/android/internal/telephony/cat/Menu;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 205
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mInput:Lcom/android/internal/telephony/cat/Input;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 206
    iget-boolean p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mLoadIconFailed:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 207
    sget-object p2, Lcom/android/internal/telephony/cat/CatCmdMessage$2;->$SwitchMap$com$android$internal$telephony$cat$AppInterface$CommandType:[I

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/CatCmdMessage;->getCmdType()Lcom/android/internal/telephony/cat/AppInterface$CommandType;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_6b

    const/16 v1, 0x10

    if-eq p2, v1, :cond_5c

    const/16 v1, 0x15

    if-eq p2, v1, :cond_54

    const/16 v1, 0xd

    if-eq p2, v1, :cond_41

    const/16 v1, 0xe

    if-eq p2, v1, :cond_3b

    goto :goto_7b

    .line 213
    :cond_3b
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mToneSettings:Lcom/android/internal/telephony/cat/ToneSettings;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    .line 209
    :cond_41
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object p2, p2, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->url:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mBrowserSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$BrowserSettings;->mode:Lcom/android/internal/telephony/cat/LaunchBrowserMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeInt(I)V

    return-void

    .line 220
    :cond_54
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSetupEventListSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SetupEventListSettings;->eventList:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void

    .line 216
    :cond_5c
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object p2, p2, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->confirmMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 217
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mCallSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$CallSettings;->callMsg:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    return-void

    .line 223
    :cond_6b
    iget-object p2, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    if-eqz p2, :cond_7b

    .line 224
    iget-object p2, p2, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->smsText:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, p2, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 225
    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage;->mSMSSettings:Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;

    iget-object p0, p0, Lcom/android/internal/telephony/cat/CatCmdMessage$SMSSettings;->destAddr:Lcom/android/internal/telephony/cat/TextMessage;

    invoke-virtual {p1, p0, v0}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    :cond_7b
    :goto_7b
    return-void
.end method
