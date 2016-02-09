.class public Landroid/app/ActivityManager$ProcessErrorStateInfo;
.super Ljava/lang/Object;
.source "ActivityManager.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessErrorStateInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/ActivityManager$ProcessErrorStateInfo$1;
    }
.end annotation


# static fields
.field public static final CRASHED:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final NOT_RESPONDING:I = 0x2

.field public static final NO_ERROR:I


# instance fields
.field public condition:I

.field public crashData:[B

.field public longMsg:Ljava/lang/String;

.field public pid:I

.field public processName:Ljava/lang/String;

.field public shortMsg:Ljava/lang/String;

.field public stackTrace:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 1958
    new-instance v0, Landroid/app/ActivityManager$ProcessErrorStateInfo$1;

    #@2
    invoke-direct {v0}, Landroid/app/ActivityManager$ProcessErrorStateInfo$1;-><init>()V

    #@5
    .line 1957
    sput-object v0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 1871
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 1926
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1924
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->crashData:[B

    #@6
    .line 1926
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1967
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 1924
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->crashData:[B

    #@6
    .line 1968
    invoke-virtual {p0, p1}, Landroid/app/ActivityManager$ProcessErrorStateInfo;->readFromParcel(Landroid/os/Parcel;)V

    #@9
    .line 1967
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/app/ActivityManager$ProcessErrorStateInfo;)V
    .locals 0
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/app/ActivityManager$ProcessErrorStateInfo;-><init>(Landroid/os/Parcel;)V

    #@3
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 1931
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 1947
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    #@6
    .line 1948
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@9
    move-result-object v0

    #@a
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    #@c
    .line 1949
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@f
    move-result v0

    #@10
    iput v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    #@12
    .line 1950
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    #@15
    move-result v0

    #@16
    iput v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    #@18
    .line 1951
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    #@1e
    .line 1952
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@21
    move-result-object v0

    #@22
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    #@24
    .line 1953
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@27
    move-result-object v0

    #@28
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    #@2a
    .line 1954
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@2d
    move-result-object v0

    #@2e
    iput-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    #@30
    .line 1946
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 1936
    iget v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->condition:I

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@5
    .line 1937
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->processName:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 1938
    iget v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->pid:I

    #@c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@f
    .line 1939
    iget v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->uid:I

    #@11
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@14
    .line 1940
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->tag:Ljava/lang/String;

    #@16
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@19
    .line 1941
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->shortMsg:Ljava/lang/String;

    #@1b
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1e
    .line 1942
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->longMsg:Ljava/lang/String;

    #@20
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@23
    .line 1943
    iget-object v0, p0, Landroid/app/ActivityManager$ProcessErrorStateInfo;->stackTrace:Ljava/lang/String;

    #@25
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@28
    .line 1935
    return-void
.end method
