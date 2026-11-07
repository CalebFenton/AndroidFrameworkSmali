.class public final Landroid/hardware/display/BrightnessCorrection;
.super Ljava/lang/Object;
.source "BrightnessCorrection.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;,
        Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/hardware/display/BrightnessCorrection;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist SCALE_AND_TRANSLATE_LOG:I = 0x1

.field private static final blacklist TAG_SCALE_AND_TRANSLATE_LOG:Ljava/lang/String; = "scale-and-translate-log"


# instance fields
.field private blacklist mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smloadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 2

    invoke-static {p0, p1}, Landroid/hardware/display/BrightnessCorrection;->loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 122
    new-instance v0, Landroid/hardware/display/BrightnessCorrection$1;

    invoke-direct {v0}, Landroid/hardware/display/BrightnessCorrection$1;-><init>()V

    sput-object v0, Landroid/hardware/display/BrightnessCorrection;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V
    .registers 2
    .param p1, "implementation"    # Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    .line 58
    return-void
.end method

.method public static whitelist createScaleAndTranslateLog(FF)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .param p0, "scale"    # F
    .param p1, "translate"    # F

    .line 77
    new-instance v0, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;

    invoke-direct {v0, p0, p1}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;-><init>(FF)V

    .line 79
    .local v0, "implementation":Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;
    new-instance v1, Landroid/hardware/display/BrightnessCorrection;

    invoke-direct {v1, v0}, Landroid/hardware/display/BrightnessCorrection;-><init>(Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;)V

    return-object v1
.end method

.method private static blacklist loadFloatFromXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/lang/String;)F
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .param p1, "attribute"    # Ljava/lang/String;

    .line 185
    const/4 v0, 0x0

    const/high16 v1, 0x7fc00000    # Float.NaN

    invoke-interface {p0, v0, p1, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static blacklist loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;
    .registers 4
    .param p0, "parser"    # Lcom/android/modules/utils/TypedXmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 175
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 176
    .local v0, "depth":I
    :cond_4
    invoke-static {p0, v0}, Lcom/android/internal/util/XmlUtils;->nextElementWithin(Lorg/xmlpull/v1/XmlPullParser;I)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 177
    const-string v1, "scale-and-translate-log"

    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 178
    invoke-static {p0}, Landroid/hardware/display/BrightnessCorrection$ScaleAndTranslateLog;->loadFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/hardware/display/BrightnessCorrection;

    move-result-object v1

    return-object v1

    .line 181
    :cond_1b
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public whitelist apply(F)F
    .registers 3
    .param p1, "brightness"    # F

    .line 92
    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->apply(F)F

    move-result v0

    return v0
.end method

.method public whitelist describeContents()I
    .registers 2

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 107
    if-ne p1, p0, :cond_4

    .line 108
    const/4 v0, 0x1

    return v0

    .line 110
    :cond_4
    instance-of v0, p1, Landroid/hardware/display/BrightnessCorrection;

    if-nez v0, :cond_a

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_a
    move-object v0, p1

    check-cast v0, Landroid/hardware/display/BrightnessCorrection;

    .line 114
    .local v0, "other":Landroid/hardware/display/BrightnessCorrection;
    iget-object v1, v0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    iget-object v2, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v1, v2}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public whitelist test-api hashCode()I
    .registers 2

    .line 119
    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .registers 3
    .param p1, "serializer"    # Lcom/android/modules/utils/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 157
    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 158
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 102
    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 140
    iget-object v0, p0, Landroid/hardware/display/BrightnessCorrection;->mImplementation:Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;

    invoke-interface {v0, p1}, Landroid/hardware/display/BrightnessCorrection$BrightnessCorrectionImplementation;->writeToParcel(Landroid/os/Parcel;)V

    .line 141
    return-void
.end method
