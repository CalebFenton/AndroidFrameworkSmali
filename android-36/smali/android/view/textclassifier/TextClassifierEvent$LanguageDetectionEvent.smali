.class public final Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;
.super Landroid/view/textclassifier/TextClassifierEvent;
.source "TextClassifierEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LanguageDetectionEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1034
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1050
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 1051
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;

    .line 1054
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 1055
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$LanguageDetectionEvent$Builder;)V

    return-void
.end method
