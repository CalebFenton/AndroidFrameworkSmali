.class abstract Landroid/security/keymaster/KeymasterArgument;
.super Ljava/lang/Object;
.source "KeymasterArgument.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/keymaster/KeymasterArgument$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/security/keymaster/KeymasterArgument;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final tag:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 33
    new-instance v0, Landroid/security/keymaster/KeymasterArgument$1;

    #@2
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArgument$1;-><init>()V

    #@5
    sput-object v0, Landroid/security/keymaster/KeymasterArgument;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method protected constructor <init>(I)V
    .locals 0
    .param p1, "tag"    # I

    #@0
    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput p1, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    #@5
    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 77
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 82
    iget v0, p0, Landroid/security/keymaster/KeymasterArgument;->tag:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 83
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArgument;->writeValue(Landroid/os/Parcel;)V

    #@8
    .line 81
    return-void
.end method

.method public abstract writeValue(Landroid/os/Parcel;)V
.end method
