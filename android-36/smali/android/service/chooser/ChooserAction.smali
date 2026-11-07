.class public final Landroid/service/chooser/ChooserAction;
.super Ljava/lang/Object;
.source "ChooserAction.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/chooser/ChooserAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/chooser/ChooserAction;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mAction:Landroid/app/PendingIntent;

.field private final blacklist mIcon:Landroid/graphics/drawable/Icon;

.field private final blacklist mLabel:Ljava/lang/CharSequence;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 90
    new-instance v0, Landroid/service/chooser/ChooserAction$1;

    invoke-direct {v0}, Landroid/service/chooser/ChooserAction$1;-><init>()V

    sput-object v0, Landroid/service/chooser/ChooserAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .registers 4
    .param p1, "icon"    # Landroid/graphics/drawable/Icon;
    .param p2, "label"    # Ljava/lang/CharSequence;
    .param p3, "action"    # Landroid/app/PendingIntent;

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    .line 44
    iput-object p2, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    .line 45
    iput-object p3, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    .line 46
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/service/chooser/ChooserAction-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/service/chooser/ChooserAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAction()Landroid/app/PendingIntent;
    .registers 2

    .line 69
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public whitelist getIcon()Landroid/graphics/drawable/Icon;
    .registers 2

    .line 61
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public whitelist getLabel()Ljava/lang/CharSequence;
    .registers 2

    .line 53
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ChooserAction {label="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 79
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mIcon:Landroid/graphics/drawable/Icon;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Icon;->writeToParcel(Landroid/os/Parcel;I)V

    .line 80
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mLabel:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 81
    iget-object v0, p0, Landroid/service/chooser/ChooserAction;->mAction:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, p2}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 82
    return-void
.end method
