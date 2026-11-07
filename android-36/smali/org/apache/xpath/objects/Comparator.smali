.class abstract Lorg/apache/xpath/objects/Comparator;
.super Ljava/lang/Object;
.source "XNodeSet.java"


# direct methods
.method constructor greylist <init>()V
    .registers 1

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract greylist compareNumbers(DD)Z
.end method

.method abstract greylist compareStrings(Lorg/apache/xml/utils/XMLString;Lorg/apache/xml/utils/XMLString;)Z
.end method
