.class public Landroid/net/wifi/WifiScanner$OperationResult;
.super Ljava/lang/Object;
.source "WifiScanner.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiScanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OperationResult"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/WifiScanner$OperationResult$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/WifiScanner$OperationResult;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public description:Ljava/lang/String;

.field public reason:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 918
    new-instance v0, Landroid/net/wifi/WifiScanner$OperationResult$1;

    #@2
    invoke-direct {v0}, Landroid/net/wifi/WifiScanner$OperationResult$1;-><init>()V

    #@5
    .line 917
    sput-object v0, Landroid/net/wifi/WifiScanner$OperationResult;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 896
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .param p1, "reason"    # I
    .param p2, "description"    # Ljava/lang/String;

    #@0
    .prologue
    .line 900
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 901
    iput p1, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    #@5
    .line 902
    iput-object p2, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    #@7
    .line 900
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 907
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 912
    iget v0, p0, Landroid/net/wifi/WifiScanner$OperationResult;->reason:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 913
    iget-object v0, p0, Landroid/net/wifi/WifiScanner$OperationResult;->description:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 911
    return-void
.end method
