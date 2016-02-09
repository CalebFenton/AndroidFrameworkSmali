.class public final Landroid/content/ComponentName;
.super Ljava/lang/Object;
.source "ComponentName.java"

# interfaces
.implements Landroid/os/Parcelable;
.implements Ljava/lang/Cloneable;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ComponentName$1;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable;",
        "Ljava/lang/Cloneable;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/content/ComponentName;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClass:Ljava/lang/String;

.field private final mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 356
    new-instance v0, Landroid/content/ComponentName$1;

    #@2
    invoke-direct {v0}, Landroid/content/ComponentName$1;-><init>()V

    #@5
    .line 355
    sput-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Class;)V
    .locals 1
    .param p1, "pkg"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 127
    .local p2, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 128
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@9
    .line 129
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@c
    move-result-object v0

    #@d
    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@f
    .line 127
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Landroid/content/Context;
    .param p2, "cls"    # Ljava/lang/String;

    #@0
    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 114
    if-nez p2, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "class name is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 115
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@11
    move-result-object v0

    #@12
    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@14
    .line 116
    iput-object p2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@16
    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 376
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 377
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@9
    .line 378
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@b
    if-nez v0, :cond_0

    #@d
    new-instance v0, Ljava/lang/NullPointerException;

    #@f
    .line 379
    const-string/jumbo v1, "package name is null"

    #@12
    .line 378
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@15
    throw v0

    #@16
    .line 380
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@19
    move-result-object v0

    #@1a
    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1c
    .line 381
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1e
    if-nez v0, :cond_1

    #@20
    new-instance v0, Ljava/lang/NullPointerException;

    #@22
    .line 382
    const-string/jumbo v1, "class name is null"

    #@25
    .line 381
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@28
    throw v0

    #@29
    .line 376
    :cond_1
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;Landroid/os/Parcel;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 386
    iput-object p1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@5
    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@8
    move-result-object v0

    #@9
    iput-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@b
    .line 385
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cls"    # Ljava/lang/String;

    #@0
    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 99
    if-nez p1, :cond_0

    #@5
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    const-string/jumbo v1, "package name is null"

    #@a
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@d
    throw v0

    #@e
    .line 100
    :cond_0
    if-nez p2, :cond_1

    #@10
    new-instance v0, Ljava/lang/NullPointerException;

    #@12
    const-string/jumbo v1, "class name is null"

    #@15
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@18
    throw v0

    #@19
    .line 101
    :cond_1
    iput-object p1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@1b
    .line 102
    iput-object p2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1d
    .line 98
    return-void
.end method

.method private static appendShortClassName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 167
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 168
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    .line 169
    .local v1, "PN":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .line 170
    .local v0, "CN":I
    if-le v0, v1, :cond_0

    #@10
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    const/16 v3, 0x2e

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 171
    invoke-virtual {p0, p2, v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;II)Ljava/lang/StringBuilder;

    #@1b
    .line 172
    return-void

    #@1c
    .line 175
    .end local v0    # "CN":I
    .end local v1    # "PN":I
    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    .line 166
    return-void
.end method

.method public static appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 231
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3
    move-result-object v0

    #@4
    const/16 v1, 0x2f

    #@6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    #@9
    .line 232
    invoke-static {p0, p1, p2}, Landroid/content/ComponentName;->appendShortClassName(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@c
    .line 230
    return-void
.end method

.method public static createRelative(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 1
    .param p0, "pkg"    # Landroid/content/Context;
    .param p1, "cls"    # Ljava/lang/String;

    #@0
    .prologue
    .line 87
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public static createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 3
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "cls"    # Ljava/lang/String;

    #@0
    .prologue
    .line 56
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@3
    move-result v1

    #@4
    if-eqz v1, :cond_0

    #@6
    .line 57
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@8
    const-string/jumbo v2, "class name cannot be empty"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 61
    :cond_0
    const/4 v1, 0x0

    #@10
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v1

    #@14
    const/16 v2, 0x2e

    #@16
    if-ne v1, v2, :cond_1

    #@18
    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v0

    #@29
    .line 68
    .local v0, "fullName":Ljava/lang/String;
    :goto_0
    new-instance v1, Landroid/content/ComponentName;

    #@2b
    invoke-direct {v1, p0, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@2e
    return-object v1

    #@2f
    .line 66
    .end local v0    # "fullName":Ljava/lang/String;
    :cond_1
    move-object v0, p1

    #@30
    .restart local v0    # "fullName":Ljava/lang/String;
    goto :goto_0
.end method

.method private static printShortClassName(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 180
    invoke-virtual {p2, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@3
    move-result v2

    #@4
    if-eqz v2, :cond_0

    #@6
    .line 181
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    #@9
    move-result v1

    #@a
    .line 182
    .local v1, "PN":I
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    #@d
    move-result v0

    #@e
    .line 183
    .local v0, "CN":I
    if-le v0, v1, :cond_0

    #@10
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    #@13
    move-result v2

    #@14
    const/16 v3, 0x2e

    #@16
    if-ne v2, v3, :cond_0

    #@18
    .line 184
    sub-int v2, v0, v1

    #@1a
    invoke-virtual {p0, p2, v1, v2}, Ljava/io/PrintWriter;->write(Ljava/lang/String;II)V

    #@1d
    .line 185
    return-void

    #@1e
    .line 188
    .end local v0    # "CN":I
    .end local v1    # "PN":I
    :cond_0
    invoke-virtual {p0, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@21
    .line 179
    return-void
.end method

.method public static printShortString(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "pw"    # Ljava/io/PrintWriter;
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    #@0
    .prologue
    .line 237
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3
    .line 238
    const/16 v0, 0x2f

    #@5
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(C)V

    #@8
    .line 239
    invoke-static {p0, p1, p2}, Landroid/content/ComponentName;->printShortClassName(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    #@b
    .line 236
    return-void
.end method

.method public static readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;
    .locals 2
    .param p0, "in"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 351
    invoke-virtual {p0}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    #@4
    move-result-object v0

    #@5
    .line 352
    .local v0, "pkg":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@7
    new-instance v1, Landroid/content/ComponentName;

    #@9
    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Landroid/os/Parcel;)V

    #@c
    :cond_0
    return-object v1
.end method

.method public static unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;
    .locals 6
    .param p0, "str"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 259
    const/16 v3, 0x2f

    #@3
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(I)I

    #@6
    move-result v2

    #@7
    .line 260
    .local v2, "sep":I
    if-ltz v2, :cond_0

    #@9
    add-int/lit8 v3, v2, 0x1

    #@b
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    #@e
    move-result v4

    #@f
    if-lt v3, v4, :cond_1

    #@11
    .line 261
    :cond_0
    const/4 v3, 0x0

    #@12
    return-object v3

    #@13
    .line 263
    :cond_1
    invoke-virtual {p0, v5, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@16
    move-result-object v1

    #@17
    .line 264
    .local v1, "pkg":Ljava/lang/String;
    add-int/lit8 v3, v2, 0x1

    #@19
    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 265
    .local v0, "cls":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    #@20
    move-result v3

    #@21
    if-lez v3, :cond_2

    #@23
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    #@26
    move-result v3

    #@27
    const/16 v4, 0x2e

    #@29
    if-ne v3, v4, :cond_2

    #@2b
    .line 266
    new-instance v3, Ljava/lang/StringBuilder;

    #@2d
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@30
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v3

    #@34
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v3

    #@38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3b
    move-result-object v0

    #@3c
    .line 268
    :cond_2
    new-instance v3, Landroid/content/ComponentName;

    #@3e
    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@41
    return-object v3
.end method

.method public static writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V
    .locals 1
    .param p0, "c"    # Landroid/content/ComponentName;
    .param p1, "out"    # Landroid/os/Parcel;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 332
    if-eqz p0, :cond_0

    #@3
    .line 333
    const/4 v0, 0x0

    #@4
    invoke-virtual {p0, p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    #@7
    .line 331
    :goto_0
    return-void

    #@8
    .line 335
    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@b
    goto :goto_0
.end method


# virtual methods
.method public appendShortString(Ljava/lang/StringBuilder;)V
    .locals 2
    .param p1, "sb"    # Ljava/lang/StringBuilder;

    #@0
    .prologue
    .line 226
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@2
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@4
    invoke-static {p1, v0, v1}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@7
    .line 225
    return-void
.end method

.method public clone()Landroid/content/ComponentName;
    .locals 3

    #@0
    .prologue
    .line 133
    new-instance v0, Landroid/content/ComponentName;

    #@2
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@4
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@6
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@9
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Landroid/content/ComponentName;->clone()Landroid/content/ComponentName;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public compareTo(Landroid/content/ComponentName;)I
    .locals 3
    .param p1, "that"    # Landroid/content/ComponentName;

    #@0
    .prologue
    .line 306
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@2
    iget-object v2, p1, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@4
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 307
    .local v0, "v":I
    if-eqz v0, :cond_0

    #@a
    .line 308
    return v0

    #@b
    .line 310
    :cond_0
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@d
    iget-object v2, p1, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@f
    invoke-virtual {v1, v2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    #@12
    move-result v1

    #@13
    return v1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1, "that"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 304
    check-cast p1, Landroid/content/ComponentName;

    #@2
    .end local p1    # "that":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 314
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "obj"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 287
    if-eqz p1, :cond_1

    #@3
    .line 288
    :try_start_0
    move-object v0, p1

    #@4
    check-cast v0, Landroid/content/ComponentName;

    #@6
    move-object v2, v0

    #@7
    .line 291
    .local v2, "other":Landroid/content/ComponentName;
    iget-object v4, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@9
    iget-object v5, v2, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@b
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@e
    move-result v4

    #@f
    if-eqz v4, :cond_0

    #@11
    .line 292
    iget-object v4, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@13
    iget-object v5, v2, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@15
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    #@18
    move-result v3

    #@19
    .line 291
    :cond_0
    return v3

    #@1a
    .line 294
    .end local v2    # "other":Landroid/content/ComponentName;
    :catch_0
    move-exception v1

    #@1b
    .line 296
    :cond_1
    return v3
.end method

.method public flattenToShortString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    #@7
    move-result v1

    #@8
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@d
    move-result v2

    #@e
    add-int/2addr v1, v2

    #@f
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    #@12
    .line 220
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@14
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@16
    invoke-static {v0, v1, v2}, Landroid/content/ComponentName;->appendShortString(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    #@19
    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1c
    move-result-object v1

    #@1d
    return-object v1
.end method

.method public flattenToString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 204
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a
    move-result-object v0

    #@b
    const-string/jumbo v1, "/"

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v0

    #@18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v0

    #@1c
    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 147
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 140
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getShortClassName()Ljava/lang/String;
    .locals 4

    #@0
    .prologue
    .line 155
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@2
    iget-object v3, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@4
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    #@7
    move-result v2

    #@8
    if-eqz v2, :cond_0

    #@a
    .line 156
    iget-object v2, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@f
    move-result v1

    #@10
    .line 157
    .local v1, "PN":I
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@12
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v0

    #@16
    .line 158
    .local v0, "CN":I
    if-le v0, v1, :cond_0

    #@18
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1a
    invoke-virtual {v2, v1}, Ljava/lang/String;->charAt(I)C

    #@1d
    move-result v2

    #@1e
    const/16 v3, 0x2e

    #@20
    if-ne v2, v3, :cond_0

    #@22
    .line 159
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@24
    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    return-object v2

    #@29
    .line 162
    .end local v0    # "CN":I
    .end local v1    # "PN":I
    :cond_0
    iget-object v2, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@2b
    return-object v2
.end method

.method public hashCode()I
    .locals 2

    #@0
    .prologue
    .line 301
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@8
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    #@b
    move-result v1

    #@c
    add-int/2addr v0, v1

    #@d
    return v0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 281
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "ComponentInfo{"

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    const-string/jumbo v1, "/"

    #@15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@18
    move-result-object v0

    #@19
    iget-object v1, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@1b
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v0

    #@1f
    const-string/jumbo v1, "}"

    #@22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@29
    move-result-object v0

    #@2a
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 318
    iget-object v0, p0, Landroid/content/ComponentName;->mPackage:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 319
    iget-object v0, p0, Landroid/content/ComponentName;->mClass:Ljava/lang/String;

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@a
    .line 317
    return-void
.end method
