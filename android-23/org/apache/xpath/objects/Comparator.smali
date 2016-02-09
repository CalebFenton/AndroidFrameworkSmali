.class abstract Lorg/apache/xpath/objects/Comparator;
.super Ljava/lang/Object;
.source "XNodeSet.java"


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method abstract compareNumbers(DD)Z
.end method

.method abstract compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
.end method
