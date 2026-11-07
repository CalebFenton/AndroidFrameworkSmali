.class public final Landroid/view/textclassifier/ConversationActions;
.super Ljava/lang/Object;
.source "ConversationActions.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/ConversationActions$Request;,
        Landroid/view/textclassifier/ConversationActions$Message;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/view/textclassifier/ConversationActions;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mConversationActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mId:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 45
    new-instance v0, Landroid/view/textclassifier/ConversationActions$1;

    invoke-direct {v0}, Landroid/view/textclassifier/ConversationActions$1;-><init>()V

    sput-object v0, Landroid/view/textclassifier/ConversationActions;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    sget-object v0, Landroid/view/textclassifier/ConversationAction;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 71
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mConversationActions:Ljava/util/List;

    .line 72
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mId:Ljava/lang/String;

    .line 73
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/view/textclassifier/ConversationActions-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/view/textclassifier/ConversationActions;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor whitelist <init>(Ljava/util/List;Ljava/lang/String;)V
    .registers 4
    .param p2, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 63
    .local p1, "conversationActions":Ljava/util/List;, "Ljava/util/List<Landroid/view/textclassifier/ConversationAction;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    nop

    .line 65
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mConversationActions:Ljava/util/List;

    .line 66
    iput-object p2, p0, Landroid/view/textclassifier/ConversationActions;->mId:Ljava/lang/String;

    .line 67
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getConversationActions()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/ConversationAction;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mConversationActions:Ljava/util/List;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 82
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mConversationActions:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 83
    iget-object v0, p0, Landroid/view/textclassifier/ConversationActions;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 84
    return-void
.end method
