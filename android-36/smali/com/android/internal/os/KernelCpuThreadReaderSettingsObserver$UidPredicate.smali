.class public Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;
.super Ljava/lang/Object;
.source "KernelCpuThreadReaderSettingsObserver.java"

# interfaces
.implements Ljava/util/function/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidPredicate"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/function/Predicate<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# static fields
.field private static final blacklist UID_RANGE_PATTERN:Ljava/util/regex/Pattern;

.field private static final blacklist UID_SPECIFIER_DELIMITER:Ljava/lang/String; = ";"


# instance fields
.field private final blacklist mAcceptedUidRanges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 148
    const-string v0, "([0-9]+)-([0-9]+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->UID_RANGE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    .line 183
    .local p1, "acceptedUidRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->mAcceptedUidRanges:Ljava/util/List;

    .line 185
    return-void
.end method

.method public static blacklist fromString(Ljava/lang/String;)Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;
    .registers 9
    .param p0, "predicateString"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 169
    .local v0, "acceptedUidRanges":Ljava/util/List;, "Ljava/util/List<Landroid/util/Range<Ljava/lang/Integer;>;>;"
    const-string v1, ";"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v2, :cond_5b

    aget-object v4, v1, v3

    .line 170
    .local v4, "uidSpecifier":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->UID_RANGE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 171
    .local v5, "uidRangeMatcher":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->matches()Z

    move-result v6

    if-eqz v6, :cond_42

    .line 175
    nop

    .line 177
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    .line 178
    const/4 v7, 0x2

    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 176
    invoke-static {v6, v7}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v6

    .line 175
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 169
    .end local v4    # "uidSpecifier":Ljava/lang/String;
    .end local v5    # "uidRangeMatcher":Ljava/util/regex/Matcher;
    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    .line 172
    .restart local v4    # "uidSpecifier":Ljava/lang/String;
    .restart local v5    # "uidRangeMatcher":Ljava/util/regex/Matcher;
    :cond_42
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to recognize as number range: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 180
    .end local v4    # "uidSpecifier":Ljava/lang/String;
    .end local v5    # "uidRangeMatcher":Ljava/util/regex/Matcher;
    :cond_5b
    new-instance v1, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;

    invoke-direct {v1, v0}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;-><init>(Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public blacklist test(Ljava/lang/Integer;)Z
    .registers 4
    .param p1, "uid"    # Ljava/lang/Integer;

    .line 190
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->mAcceptedUidRanges:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1c

    .line 191
    iget-object v1, p0, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->mAcceptedUidRanges:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Range;

    invoke-virtual {v1, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 192
    const/4 v1, 0x1

    return v1

    .line 190
    :cond_19
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 195
    .end local v0    # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic whitelist test-api test(Ljava/lang/Object;)Z
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 146
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/android/internal/os/KernelCpuThreadReaderSettingsObserver$UidPredicate;->test(Ljava/lang/Integer;)Z

    move-result p1

    return p1
.end method
