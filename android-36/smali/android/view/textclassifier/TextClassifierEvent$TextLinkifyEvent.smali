.class public final Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;
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
    name = "TextLinkifyEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 955
    new-instance v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$1;

    invoke-direct {v0}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 970
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 971
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;

    .line 974
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/view/textclassifier/TextClassifierEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V

    .line 975
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;Landroid/view/textclassifier/TextClassifierEvent-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent;-><init>(Landroid/view/textclassifier/TextClassifierEvent$TextLinkifyEvent$Builder;)V

    return-void
.end method
