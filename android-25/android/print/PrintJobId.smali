.class public final Landroid/print/PrintJobId;
.super Ljava/lang/Object;
.source "PrintJobId.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/print/PrintJobId$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/print/PrintJobId;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 113
    new-instance v0, Landroid/print/PrintJobId$1;

    #@2
    invoke-direct {v0}, Landroid/print/PrintJobId$1;-><init>()V

    #@5
    .line 112
    sput-object v0, Landroid/print/PrintJobId;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 39
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    invoke-direct {p0, v0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    #@b
    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 50
    iput-object p1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@5
    .line 49
    return-void
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/print/PrintJobId;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    #@0
    .prologue
    .line 109
    new-instance v0, Landroid/print/PrintJobId;

    #@2
    invoke-direct {v0, p0}, Landroid/print/PrintJobId;-><init>(Ljava/lang/String;)V

    #@5
    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 86
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v4, 0x1

    #@1
    const/4 v3, 0x0

    #@2
    .line 63
    if-ne p0, p1, :cond_0

    #@4
    .line 64
    return v4

    #@5
    .line 66
    :cond_0
    if-nez p1, :cond_1

    #@7
    .line 67
    return v3

    #@8
    .line 69
    :cond_1
    invoke-virtual {p0}, Landroid/print/PrintJobId;->getClass()Ljava/lang/Class;

    #@b
    move-result-object v1

    #@c
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    #@f
    move-result-object v2

    #@10
    if-eq v1, v2, :cond_2

    #@12
    .line 70
    return v3

    #@13
    :cond_2
    move-object v0, p1

    #@14
    .line 72
    check-cast v0, Landroid/print/PrintJobId;

    #@16
    .line 73
    .local v0, "other":Landroid/print/PrintJobId;
    iget-object v1, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@18
    iget-object v2, v0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_3

    #@20
    .line 74
    return v3

    #@21
    .line 76
    :cond_3
    return v4
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 97
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    #@0
    .prologue
    .line 55
    const/16 v0, 0x1f

    #@2
    .line 57
    .local v0, "prime":I
    iget-object v2, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@4
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    #@7
    move-result v2

    #@8
    add-int/lit8 v1, v2, 0x1f

    #@a
    .line 58
    .local v1, "result":I
    return v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "parcel"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 81
    iget-object v0, p0, Landroid/print/PrintJobId;->mValue:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 80
    return-void
.end method
