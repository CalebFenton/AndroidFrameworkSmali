.class public final Landroid/app/contextualsearch/ContextualSearchState;
.super Ljava/lang/Object;
.source "ContextualSearchState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/contextualsearch/ContextualSearchState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContent:Landroid/app/assist/AssistContent;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mStructure:Landroid/app/assist/AssistStructure;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 102
    new-instance v0, Landroid/app/contextualsearch/ContextualSearchState$1;

    invoke-direct {v0}, Landroid/app/contextualsearch/ContextualSearchState$1;-><init>()V

    sput-object v0, Landroid/app/contextualsearch/ContextualSearchState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor whitelist <init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "structure"    # Landroid/app/assist/AssistStructure;
    .param p2, "content"    # Landroid/app/assist/AssistContent;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    .line 56
    iput-object p2, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    .line 57
    iput-object p3, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    .line 58
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    sget-object v0, Landroid/app/assist/AssistStructure;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistStructure;

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    .line 62
    sget-object v0, Landroid/app/assist/AssistContent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/assist/AssistContent;

    iput-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    .line 64
    .local v0, "extras":Landroid/os/Bundle;
    if-eqz v0, :cond_27

    move-object v1, v0

    goto :goto_29

    :cond_27
    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    :goto_29
    iput-object v1, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    .line 65
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/contextualsearch/ContextualSearchState-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/app/contextualsearch/ContextualSearchState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getContent()Landroid/app/assist/AssistContent;
    .registers 2

    .line 82
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .registers 2

    .line 98
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getStructure()Landroid/app/assist/AssistStructure;
    .registers 2

    .line 88
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 74
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mStructure:Landroid/app/assist/AssistStructure;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 75
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mContent:Landroid/app/assist/AssistContent;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 76
    iget-object v0, p0, Landroid/app/contextualsearch/ContextualSearchState;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 77
    return-void
.end method
