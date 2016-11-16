.class Ljava/util/Collections$EmptyEnumeration;
.super Ljava/lang/Object;
.source "Collections.java"

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/Collections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EmptyEnumeration"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Enumeration",
        "<TE;>;"
    }
.end annotation


# static fields
.field static final EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collections$EmptyEnumeration",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 3546
    new-instance v0, Ljava/util/Collections$EmptyEnumeration;

    #@2
    invoke-direct {v0}, Ljava/util/Collections$EmptyEnumeration;-><init>()V

    #@5
    .line 3545
    sput-object v0, Ljava/util/Collections$EmptyEnumeration;->EMPTY_ENUMERATION:Ljava/util/Collections$EmptyEnumeration;

    #@7
    .line 3544
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 3544
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    #@0
    .prologue
    .line 3548
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    #@0
    .prologue
    .line 3549
    .local p0, "this":Ljava/util/Collections$EmptyEnumeration;, "Ljava/util/Collections$EmptyEnumeration<TE;>;"
    new-instance v0, Ljava/util/NoSuchElementException;

    #@2
    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    #@5
    throw v0
.end method
