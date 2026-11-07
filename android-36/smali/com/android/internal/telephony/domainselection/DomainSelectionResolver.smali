.class public Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;
.super Ljava/lang/Object;
.source "DomainSelectionResolver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;
    }
.end annotation


# static fields
.field private static final blacklist DBG:Z

.field protected static final blacklist PACKAGE_NAME_NONE:Ljava/lang/String; = "none"

.field private static final blacklist TAG:Ljava/lang/String; = "DomainSelectionResolver"

.field private static blacklist sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private blacklist mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

.field private final blacklist mDefaultComponentName:Landroid/content/ComponentName;

.field private blacklist mDomainSelectionControllerFactory:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;

.field private final blacklist mEventLog:Lcom/android/internal/telephony/LocalLog;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 53
    sget-boolean v0, Lcom/android/internal/telephony/util/TelephonyUtils;->IS_DEBUGGABLE:Z

    sput-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->DBG:Z

    const/4 v0, 0x0

    .line 57
    sput-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$1;-><init>(Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;)V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDomainSelectionControllerFactory:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;

    .line 115
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    .line 124
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mContext:Landroid/content/Context;

    if-nez p2, :cond_19

    .line 125
    const-string p2, ""

    .line 126
    :cond_19
    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDefaultComponentName:Landroid/content/ComponentName;

    .line 127
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "DomainSelectionResolver created: componentName=["

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist getInstance()Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;
    .registers 2

    .line 79
    sget-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    if-eqz v0, :cond_5

    return-object v0

    .line 80
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "DomainSelectionResolver is not ready!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist logd(Ljava/lang/String;)V
    .registers 2

    .line 270
    sget-object p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->TAG:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private blacklist logi(Ljava/lang/String;)V
    .registers 3

    .line 274
    sget-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static blacklist make(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    .line 67
    sget-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "make useOem="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    sget-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    if-nez v0, :cond_22

    .line 69
    new-instance v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    :cond_22
    return-void
.end method

.method public static blacklist setDomainSelectionResolver(Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;)V
    .registers 1

    .line 92
    sput-object p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->sInstance:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;

    return-void
.end method


# virtual methods
.method public blacklist clearDomainSelectionServiceOverride()Z
    .registers 2

    .line 236
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    if-nez v0, :cond_b

    .line 237
    const-string v0, "Controller is not initialized."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 240
    :cond_b
    const-string v0, "clearDomainSelectionServiceOverride"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->unbind()V

    .line 242
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDefaultComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->bind(Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4

    .line 249
    new-instance p1, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    const-string p3, "  "

    invoke-direct {p1, p2, p3}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 250
    const-string p2, "Resolver:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 252
    const-string p2, "Event Log:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 254
    iget-object p2, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mEventLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/PrintWriter;)V

    .line 255
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 256
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 258
    const-string p2, "Controller:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 259
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    .line 260
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    if-nez p0, :cond_34

    .line 262
    const-string p0, "no active controller"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_37

    .line 264
    :cond_34
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->dump(Ljava/io/PrintWriter;)V

    .line 266
    :goto_37
    invoke-virtual {p1}, Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/AndroidUtilIndentingPrintWriter;

    return-void
.end method

.method public blacklist getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;
    .registers 5

    .line 162
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    if-eqz v0, :cond_21

    if-eqz p1, :cond_1f

    .line 168
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getImsPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    if-eqz v0, :cond_1f

    if-eqz p3, :cond_11

    const/4 v0, 0x1

    if-eq p2, v0, :cond_18

    .line 170
    :cond_11
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->isImsAvailable()Z

    move-result v0

    if-nez v0, :cond_18

    goto :goto_1f

    .line 179
    :cond_18
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->getDomainSelectionConnection(Lcom/android/internal/telephony/Phone;IZ)Lcom/android/internal/telephony/domainselection/DomainSelectionConnection;

    move-result-object p0

    return-object p0

    :cond_1f
    :goto_1f
    const/4 p0, 0x0

    return-object p0

    .line 165
    :cond_21
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "DomainSelection is not supported!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public blacklist initialize()V
    .registers 3

    .line 193
    const-string v0, "Initialize"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    .line 194
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDomainSelectionControllerFactory:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;

    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;->create(Landroid/content/Context;)Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    .line 195
    iget-object v1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDefaultComponentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_17

    .line 196
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->bind(Landroid/content/ComponentName;)Z

    return-void

    .line 198
    :cond_17
    const-string v0, "No component name specified for domain selection service."

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    return-void
.end method

.method public blacklist isDomainSelectionSupported()Z
    .registers 3

    .line 140
    sget-boolean v0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->DBG:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_13

    const-string v0, "telephony.test.disable_domain_selection"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 141
    const-string v0, "Disabled for test"

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    return v1

    .line 144
    :cond_13
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDefaultComponentName:Landroid/content/ComponentName;

    if-eqz p0, :cond_2a

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object p0

    const/4 v0, 0x4

    .line 145
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/Phone;->getHalVersion(I)Lcom/android/internal/telephony/HalVersion;

    move-result-object p0

    sget-object v0, Lcom/android/internal/telephony/RIL;->RADIO_HAL_VERSION_2_1:Lcom/android/internal/telephony/HalVersion;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/HalVersion;->greaterOrEqual(Lcom/android/internal/telephony/HalVersion;)Z

    move-result p0

    if-eqz p0, :cond_2a

    const/4 p0, 0x1

    return p0

    :cond_2a
    return v1
.end method

.method public blacklist setDomainSelectionControllerFactory(Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;)V
    .registers 2

    .line 185
    iput-object p1, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mDomainSelectionControllerFactory:Lcom/android/internal/telephony/domainselection/DomainSelectionResolver$DomainSelectionControllerFactory;

    return-void
.end method

.method public blacklist setDomainSelectionServiceOverride(Landroid/content/ComponentName;)Z
    .registers 4

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    if-nez v0, :cond_b

    .line 212
    const-string p1, "Controller is not initialized."

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logd(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 215
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setDomainSelectionServiceOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->logi(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3d

    const-string v0, "none"

    .line 217
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_36

    goto :goto_3d

    .line 223
    :cond_36
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->bind(Landroid/content/ComponentName;)Z

    move-result p0

    return p0

    .line 219
    :cond_3d
    :goto_3d
    iget-object p0, p0, Lcom/android/internal/telephony/domainselection/DomainSelectionResolver;->mController:Lcom/android/internal/telephony/domainselection/DomainSelectionController;

    invoke-virtual {p0}, Lcom/android/internal/telephony/domainselection/DomainSelectionController;->unbind()V

    const/4 p0, 0x1

    return p0
.end method
