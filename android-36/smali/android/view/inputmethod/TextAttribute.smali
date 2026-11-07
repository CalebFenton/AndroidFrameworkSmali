.class public final Landroid/view/inputmethod/TextAttribute;
.super Ljava/lang/Object;
.source "TextAttribute.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/inputmethod/TextAttribute$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/inputmethod/TextAttribute;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mExtras:Landroid/os/PersistableBundle;

.field private final blacklist mTextConversionSuggestions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    new-instance v0, Landroid/view/inputmethod/TextAttribute$1;

    invoke-direct {v0}, Landroid/view/inputmethod/TextAttribute$1;-><init>()V

    sput-object v0, Landroid/view/inputmethod/TextAttribute;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mTextConversionSuggestions:Ljava/util/List;

    .line 46
    invoke-virtual {p1}, Landroid/os/Parcel;->readPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mExtras:Landroid/os/PersistableBundle;

    .line 47
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/inputmethod/TextAttribute-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextAttribute;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/inputmethod/TextAttribute$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/view/inputmethod/TextAttribute$Builder;

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    invoke-static {p1}, Landroid/view/inputmethod/TextAttribute$Builder;->-$$Nest$fgetmTextConversionSuggestions(Landroid/view/inputmethod/TextAttribute$Builder;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mTextConversionSuggestions:Ljava/util/List;

    .line 41
    invoke-static {p1}, Landroid/view/inputmethod/TextAttribute$Builder;->-$$Nest$fgetmExtras(Landroid/view/inputmethod/TextAttribute$Builder;)Landroid/os/PersistableBundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mExtras:Landroid/os/PersistableBundle;

    .line 42
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/inputmethod/TextAttribute$Builder;Landroid/view/inputmethod/TextAttribute-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/inputmethod/TextAttribute;-><init>(Landroid/view/inputmethod/TextAttribute$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 119
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getExtras()Landroid/os/PersistableBundle;
    .registers 2

    .line 68
    iget-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mExtras:Landroid/os/PersistableBundle;

    return-object v0
.end method

.method public whitelist getTextConversionSuggestions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    iget-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mTextConversionSuggestions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 124
    iget-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mTextConversionSuggestions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 125
    iget-object v0, p0, Landroid/view/inputmethod/TextAttribute;->mExtras:Landroid/os/PersistableBundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writePersistableBundle(Landroid/os/PersistableBundle;)V

    .line 126
    return-void
.end method
