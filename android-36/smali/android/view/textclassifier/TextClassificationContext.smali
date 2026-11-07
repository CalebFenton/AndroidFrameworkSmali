.class public final Landroid/view/textclassifier/TextClassificationContext;
.super Ljava/lang/Object;
.source "TextClassificationContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassificationContext$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassificationContext;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private greylist-max-o mPackageName:Ljava/lang/String;

.field private blacklist mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

.field private final greylist-max-o mWidgetType:Ljava/lang/String;

.field private final greylist-max-o mWidgetVersion:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 165
    new-instance v0, Landroid/view/textclassifier/TextClassificationContext$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassificationContext$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassificationContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mPackageName:Ljava/lang/String;

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetType:Ljava/lang/String;

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetVersion:Ljava/lang/String;

    .line 162
    const/4 v0, 0x0

    const-class v1, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textclassifier/SystemTextClassifierMetadata;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 163
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassificationContext-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor greylist-max-o <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "widgetType"    # Ljava/lang/String;
    .param p3, "widgetVersion"    # Ljava/lang/String;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mPackageName:Ljava/lang/String;

    .line 44
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetType:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetVersion:Ljava/lang/String;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/view/textclassifier/TextClassificationContext-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/view/textclassifier/TextClassificationContext;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSystemTextClassifierMetadata()Landroid/view/textclassifier/SystemTextClassifierMetadata;
    .registers 2

    .line 72
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    return-object v0
.end method

.method public whitelist getWidgetType()Ljava/lang/String;
    .registers 2

    .line 81
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getWidgetVersion()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetVersion:Ljava/lang/String;

    return-object v0
.end method

.method blacklist setSystemTextClassifierMetadata(Landroid/view/textclassifier/SystemTextClassifierMetadata;)V
    .registers 2
    .param p1, "systemTcMetadata"    # Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 62
    iput-object p1, p0, Landroid/view/textclassifier/TextClassificationContext;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    .line 63
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 6

    .line 96
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    iget-object v1, p0, Landroid/view/textclassifier/TextClassificationContext;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetType:Ljava/lang/String;

    iget-object v3, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetVersion:Ljava/lang/String;

    iget-object v4, p0, Landroid/view/textclassifier/TextClassificationContext;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "TextClassificationContext{packageName=%s, widgetType=%s, widgetVersion=%s, systemTcMetadata=%s}"

    invoke-static {v0, v2, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 152
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mWidgetVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Landroid/view/textclassifier/TextClassificationContext;->mSystemTcMetadata:Landroid/view/textclassifier/SystemTextClassifierMetadata;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 156
    return-void
.end method
