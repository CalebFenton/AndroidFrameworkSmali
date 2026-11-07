.class public final Landroid/service/autofill/VisibilitySetterAction;
.super Landroid/service/autofill/InternalOnClickAction;
.source "VisibilitySetterAction.java"

# interfaces
.implements Landroid/service/autofill/OnClickAction;
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/VisibilitySetterAction$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/service/autofill/VisibilitySetterAction;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "VisibilitySetterAction"


# instance fields
.field private final blacklist mVisibilities:Landroid/util/SparseIntArray;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 150
    new-instance v0, Landroid/service/autofill/VisibilitySetterAction$1;

    invoke-direct {v0}, Landroid/service/autofill/VisibilitySetterAction$1;-><init>()V

    sput-object v0, Landroid/service/autofill/VisibilitySetterAction;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/service/autofill/VisibilitySetterAction$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/service/autofill/VisibilitySetterAction$Builder;

    .line 47
    invoke-direct {p0}, Landroid/service/autofill/InternalOnClickAction;-><init>()V

    .line 48
    invoke-static {p1}, Landroid/service/autofill/VisibilitySetterAction$Builder;->-$$Nest$fgetmVisibilities(Landroid/service/autofill/VisibilitySetterAction$Builder;)Landroid/util/SparseIntArray;

    move-result-object v0

    iput-object v0, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    .line 49
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/service/autofill/VisibilitySetterAction$Builder;Landroid/service/autofill/VisibilitySetterAction-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/service/autofill/VisibilitySetterAction;-><init>(Landroid/service/autofill/VisibilitySetterAction$Builder;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist onClick(Landroid/view/ViewGroup;)V
    .registers 9
    .param p1, "rootView"    # Landroid/view/ViewGroup;

    .line 54
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_76

    .line 55
    iget-object v1, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    .line 56
    .local v1, "id":I
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 57
    .local v2, "child":Landroid/view/View;
    const-string v3, "VisibilitySetterAction"

    if-nez v2, :cond_38

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipping view id "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " because it\'s not found on "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_73

    .line 61
    :cond_38
    iget-object v4, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v4, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 62
    .local v4, "visibility":I
    sget-boolean v5, Landroid/view/autofill/Helper;->sVerbose:Z

    if-eqz v5, :cond_70

    .line 63
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changing visibility of view "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 64
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 63
    invoke-static {v3, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    :cond_70
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 54
    .end local v1    # "id":I
    .end local v2    # "child":Landroid/view/View;
    .end local v4    # "visibility":I
    :goto_73
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 68
    .end local v0    # "i":I
    :cond_76
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 3

    .line 132
    sget-boolean v0, Landroid/view/autofill/Helper;->sDebug:Z

    if-nez v0, :cond_9

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 134
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VisibilitySetterAction: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 147
    iget-object v0, p0, Landroid/service/autofill/VisibilitySetterAction;->mVisibilities:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSparseIntArray(Landroid/util/SparseIntArray;)V

    .line 148
    return-void
.end method
