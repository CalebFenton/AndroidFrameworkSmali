.class Lcom/android/org/kxml2/io/KXmlParser$ContentSource;
.super Ljava/lang/Object;
.source "KXmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/org/kxml2/io/KXmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ContentSource"
.end annotation


# instance fields
.field private final blacklist buffer:[C

.field private final blacklist limit:I

.field private final blacklist next:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

.field private final blacklist position:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetbuffer(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)[C
    .registers 1

    iget-object p0, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetlimit(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)I
    .registers 1

    iget p0, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->limit:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetnext(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)Lcom/android/org/kxml2/io/KXmlParser$ContentSource;
    .registers 1

    iget-object p0, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->next:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetposition(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;)I
    .registers 1

    iget p0, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->position:I

    return p0
.end method

.method constructor blacklist <init>(Lcom/android/org/kxml2/io/KXmlParser$ContentSource;[CII)V
    .registers 5
    .param p1, "next"    # Lcom/android/org/kxml2/io/KXmlParser$ContentSource;
    .param p2, "buffer"    # [C
    .param p3, "position"    # I
    .param p4, "limit"    # I

    .line 2150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2151
    iput-object p1, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->next:Lcom/android/org/kxml2/io/KXmlParser$ContentSource;

    .line 2152
    iput-object p2, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->buffer:[C

    .line 2153
    iput p3, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->position:I

    .line 2154
    iput p4, p0, Lcom/android/org/kxml2/io/KXmlParser$ContentSource;->limit:I

    .line 2155
    return-void
.end method
